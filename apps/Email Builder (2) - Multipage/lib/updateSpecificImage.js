// Function to extract cdn.kobo.com links from getSheetsData
function extractKoboLinks() {
  return getSheetsData.data
    .map(row => Object.values(row).find(value => value && value.startsWith('https://cdn.kobo.com')))
    .filter(Boolean);
}

// Function to replace a specific URL in the HTML content
function replaceSpecificURL(htmlContent, specificURL, newURL) {
  // Check if the specific URL exists in the HTML content
  if (htmlContent.includes(specificURL)) {
    // Replace the specific URL with the new URL
    return htmlContent.replace(specificURL, newURL);
  } else {
    // Return the original HTML content if the URL is not found
    return htmlContent;
  }
}

// Main function to update the specific image
function updateSpecificImage() {
  // Precondition: Only run if contentDiscoverySwitch or vipSaleSwitch is true
  if (!contentDiscoverySwitch.value && !vipSaleSwitch.value) {
    return "No updates needed as neither toggle switch is enabled.";
  }

  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Extract Kobo links
  const koboLinks = extractKoboLinks();

  // Debugging: Log the extracted Kobo links
  //  console.log("Extracted Kobo Links:", koboLinks);

  // Define the specific URL to replace
  const specificURL = "https://cdn.kobo.com/book-images/362a218a-aadd-453e-a97a-5acae38c4f83/353/569/90/False/cosmos-8.jpg";

  // Check if there are any Kobo links to use
  if (koboLinks.length > 0) {
    // Replace the specific URL with the first Kobo link
    htmlContent = replaceSpecificURL(htmlContent, specificURL, koboLinks[0]);

    // Update the HTML content state
    htmlContentState.setValue(htmlContent);

    // Return a success message
    return `The URL "\${specificURL}" was replaced with "\${koboLinks[0]}".`;
  } else {
    // Return a message if no Kobo links were found
    return "No Kobo links found to replace the specific URL.";
  }
}

// Run the function and return the result
return updateSpecificImage();
