// collectFiles (Run JS Code query - MUST be configured as an ASYNC query in Retool)

const fileDropzones = [
  heroDrop,
  directLogo1Drop,
  directDevice1Drop,
  directLogo2Drop,
  directDevice2Drop,
  directLogo3Drop,
  directDevice3Drop,
  featureImage1,
  featureImage2,
  featureImage3,
  logoLockupImage1,
  logoLockupImage2,
  logoLockupImage3,
  device1Drop,
  device2Drop,
  device3Drop
];

//  const campName = campaignName.value; // Kept commented out
//  const processedName = campName.replace(/^.*?(MK.*)$/, "$1"); // Kept commented out
//  var flag = false; // Kept commented out

// --- IMPORTANT: Encapsulate the loop in an async function ---
async function processImageUploads() {
  // We don't need 'inc' here anymore because 'await' handles the sequencing.
  // var inc = 1; // Removed, no longer needed

  for (let i = 0; i < fileDropzones.length; i++) {
    const dz = fileDropzones[i];

    // Check if value exists and has at least one file
    if (dz.value && dz.value[0]) {
      const fileName = dz.value[0].name;
      const fileBase64 = dz.value[0].base64Data;

      // Construct the image path
      const imagePath = "/contentlibrary/1 - weekly emails/2025/" + folderSelect.value + "/" + campaignName.value + "/images/" + fileName;

      try {
        console.log(`Attempting upload for: ${fileName}`); // For debugging
        // --- THIS IS THE CRUCIAL CHANGE: AWAIT THE TRIGGER ---
        await uploadImages.trigger({
          additionalScope: {
            imagePathVariable: imagePath,
            imageDataVariable: fileBase64
          }
        });
        console.log(`Successfully uploaded: ${fileName}`); // For debugging
      } catch (uploadError) {
        // If an upload fails, log it and re-throw the error.
        // This will stop the loop and trigger collectFiles's 'On failure' handler.
        console.error(`Failed to upload ${fileName}:`, uploadError);
        throw new Error(`Image upload failed for ${fileName}. Stopping process.`);
      }
    }
    // The 'inc' logic is not needed because 'await' handles the waiting.
    // if (inc===fileDropzones.length) {
    //   confirmModal.hide(); // This line is moved outside the loop.
    // }
    // inc++; // Removed, no longer needed
  }

  // --- Move confirmModal.hide() here ---
  // This line will only be reached if the loop completes successfully (all uploads attempted).
  confirmModal.hide();

  // The query needs to return something for its 'On success' handler to fire.
  // Since 'processedName' is commented out, we can return a simple status object.
  return { status: "All image uploads completed successfully" };
}

// --- IMPORTANT: Call the async function and return its Promise ---
// The 'collectFiles' query will now only be considered 'successful'
// when the Promise returned by 'processImageUploads()' resolves.
return processImageUploads();
