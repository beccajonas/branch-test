// Define global (or query-level) variables to store paths for rollback
let createdFolderPath = null;
let uploadedDocumentPath = null; // Assuming one main HTML document
let uploadedImagePaths = []; // Array to store paths of all uploaded images

// --- IMPORTANT: Update collectFiles to return uploaded image paths ---
// This is crucial. The collectFiles query needs to return the list of
// image paths that were successfully triggered for upload.
// Currently, collectFiles just triggers uploadImages and returns processedName.
// We need it to wait for uploadImages to finish and collect the successful paths.
// This means collectFiles itself needs to become async and await uploadImages.
// Example modification for collectFiles (conceptual, adapt to your actual setup):
/*
// collectFiles (Run JS Code query, needs to be async)
async function collectAndUploadFiles() {
  const fileDropzones = [ ... ]; // e.g., [fileDropzone1, fileDropzone2]
  const campName = campaignName.value;
  const processedName = campName.replace(/^.*?(MK.*)$/, "$1");
  const currentUploadedImagePaths = []; // Temporary array for this run

  for (let i = 0; i < fileDropzones.length; i++) {
    const dz = fileDropzones[i];
    if (dz.value && dz.value[0]) {
      const fileName = dz.value[0].name;
      const fileBase64 = dz.value[0].base64Data;
      // Ensure imagePath construction matches your Responsys content library structure
      const imagePath = "/contentlibrary/1 - weekly emails/2025/" + folderSelect.value + "/" + campaignName.value + "/images/" + fileName;

      try {
        await uploadImages.trigger({ // AWAIT THE UPLOAD HERE
          additionalScope: {
            imagePathVariable: imagePath,
            imageDataVariable: fileBase64
          }
        });
        currentUploadedImagePaths.push(imagePath); // Add path if upload succeeded
      } catch (uploadError) {
        console.error("Failed to upload image:", fileName, uploadError);
        // If an image upload fails, decide if you want to continue or stop the whole process.
        // For robust rollback, re-throwing the error here is often best to trigger the catch block.
        throw new Error(`Image upload failed for ${fileName}`); // Re-throw to propagate failure
      }
    }
  }
  return {
      processedName: processedName,
      uploadedImagePaths: currentUploadedImagePaths
  };
}
return collectAndUploadFiles();
*/
// --- END collectFiles modification suggestion ---

async function runQueries() {
  try {
    // 1. Authenticate (no rollback needed for this)
    await tokenCheck.trigger();

    // 2. Create Folder
    const folderPath = "/contentlibrary/1 - weekly emails/2025/" + folderSelect.value + "/" + campaignName.value; // Re-construct the path
    await createFolder.trigger({
        additionalScope: {
            folderPath: folderPath // Assuming createFolder takes this as a variable
        }
    });
    createdFolderPath = folderPath; // Store for rollback

    // 3. Collect and Upload Images
    // collectFiles must now return the list of paths of successfully uploaded images
    const collectFilesResult = await collectFiles.trigger();
    uploadedImagePaths = collectFilesResult.uploadedImagePaths; // Store for rollback
    const processedName = collectFilesResult.processedName; // Get processed name for later steps

    // 4. Upload Main HTML Document
    // You'll need to know the HTML document's path. Assuming it's similar to images.
    // This step might be part of 'uploadDocuments' query.
    // Example: Assuming uploadDocuments takes the HTML content and constructs its path
    const htmlDocumentPath = "/contentlibrary/1 - weekly emails/2025/" + folderSelect.value + "/" + campaignName.value + "/" + processedName + ".html"; // Example path
    await uploadDocuments.trigger({
        additionalScope: {
            htmlContent: htmlContentState.value, // Pass your HTML content
            documentPath: htmlDocumentPath // Pass the target path
        }
    });
    uploadedDocumentPath = htmlDocumentPath; // Store for rollback

    // copyCampaign functionality removed as it will be run separately.

    // All successful, hide modal
    await confirmModal.hide();
    // console.log("All queries completed successfully");

  } catch (error) {
    console.error("An error occurred during deployment:", error);

    // --- ROLLBACK LOGIC ---
    console.log("Attempting rollback due to error...");

    // 1. Delete HTML Document FIRST (if uploaded)
    if (uploadedDocumentPath) {
      console.log("Deleting uploaded HTML document:", uploadedDocumentPath);
      try {
        await deleteResponsysDocument.trigger({
          additionalScope: {
            documentPathToDelete: uploadedDocumentPath
          }
        });
      } catch (deleteError) {
        console.error("Failed to delete HTML document during rollback:", deleteError);
      }
    }

    // 2. Delete All Uploaded Images (if any)
    if (uploadedImagePaths.length > 0) {
      console.log("Deleting uploaded images...");
      for (const imagePath of uploadedImagePaths) {
        try {
          await deleteResponsysImage.trigger({
            additionalScope: {
              imagePathToDelete: imagePath
            }
          });
        } catch (deleteError) {
          console.error("Failed to delete image during rollback:", imagePath, deleteError);
        }
      }
    }

    // 3. Delete the Folder (ONLY if it was created and is now empty)
    if (createdFolderPath) {
      console.log("Deleting created folder:", createdFolderPath);
      try {
        // Responsys requires folder to be empty before deletion.
        // So, document and image deletion must happen BEFORE folder deletion.
        // This is why the order of rollback is important.
        await deleteResponsysFolder.trigger({
          additionalScope: {
            folderPathToDelete: createdFolderPath
          }
        });
      } catch (deleteError) {
        console.error("Failed to delete folder during rollback:", deleteError);
        // Note: If folder deletion fails, it's likely not empty.
        // You might need a more sophisticated cleanup (e.g., manual intervention).
      }
    }

    // Re-throw the original error after rollback attempt
    throw error;
  }
}

// Run the async function
runQueries();
