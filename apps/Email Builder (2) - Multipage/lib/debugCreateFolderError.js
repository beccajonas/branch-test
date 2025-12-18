// debugCreateFolderError.js

// This function calculates the dynamic folder path,
// mirroring how it's done in your main responsysCompiled.
function getDynamicFolderPath() {
  // Ensure folderSelect.value and campaignName.value are accessible
  // If this JS query is triggered from a button, these values should be in scope.
  // If not, you might need to pass them via additionalScope or read them from Retool components.
  if (!folderSelect.value || !campaignName.value) {
    throw new Error("folderSelect.value or campaignName.value is missing. Cannot determine folder path.");
  }
  return "/contentlibrary/1 - weekly emails/2025/" + folderSelect.value + "/" + campaignName.value;
}


async function runDebug() {
  console.log("--- Starting debugCreateFolderError ---");
  let dynamicFolderPath = "";

  try {
    // Get the dynamic folder path
    dynamicFolderPath = getDynamicFolderPath();
    console.log("Attempting to create folder:", dynamicFolderPath);

    // 1. Authenticate (important to have a valid token for createFolder)
    // Assuming tokenCheck is configured to throw an error on failure
    console.log("Running tokenCheck...");
    await tokenCheck.trigger();
    console.log("tokenCheck successful.");

    // 2. Attempt to Create Folder
    console.log("Triggering createFolder...");
    await createFolder.trigger({
      additionalScope: {
        folderPath: dynamicFolderPath // Pass the dynamic path
      }
    });
    console.log("SUCCESS: createFolder completed without error.");
    console.log("Folder potentially created:", dynamicFolderPath);

    // If we reach here, it means createFolder's Promise resolved.

  } catch (error) {
    // This block should execute if any 'await' above results in a rejected Promise.
    console.error("--- ERROR CAUGHT IN debugCreateFolderError ---");
    console.error("The workflow stopped due to an error:", error);
    console.error("Error details:", error.message || error);

    // If the error was due to missing values for dynamic path construction
    if (error.message && error.message.includes("missing")) {
      console.error("Ensure folderSelect and campaignName components have values.");
    }

  } finally {
    console.log("--- Finished debugCreateFolderError ---");
  }
}

// Execute the debug function
runDebug();
