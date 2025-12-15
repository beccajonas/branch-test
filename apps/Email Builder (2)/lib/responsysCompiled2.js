async function runQueries() {
  try {
    await tokenCheck.trigger();
    await createFolder.trigger();
    await collectFiles.trigger();
    await uploadDocuments.trigger();
    //  await copyCampaign.trigger();
    await confirmModal.hide();

    //  console.log("All queries completed successfully");
  } catch (error) {
    console.error("An error occurred:", error);
  }
}

// Run the async function
runQueries();
