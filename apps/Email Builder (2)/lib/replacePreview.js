// Ensure the Google Sheets data is available
if (getSheetsData.data && getSheetsData.data.length > 1) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  let preview = heroDefaultObj.value[0].placeholder;

  // Check if the placeholder exists in the HTML content
  if (htmlContent.includes(preview)) {
    // Replace the placeholder with the data from Google Sheets
    const replacementText = getSheetsData.data[1].Copy; // Adjust the index and field name as needed
    htmlContent = htmlContent.replace(preview, replacementText);

    // Update the htmlContentState with the modified HTML content
    htmlContentState.setValue(htmlContent);
  } else {
    console.error("Placeholder text not found in HTML content.");
  }
} else {
  console.error("Google Sheets data is not available or insufficient.");
}
