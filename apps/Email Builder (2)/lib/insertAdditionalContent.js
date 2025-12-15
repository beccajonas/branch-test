// Retrieve the current HTML content
let htmlContent = htmlContentState.value;

// Retrieve the toggle switch values
const isContentDiscoveryEnabled = contentDiscoverySwitch.value;
const isVipSaleEnabled = vipSaleSwitch.value;

// Determine the content to insert based on the toggle switches
let contentToInsert = '';
if (isVipSaleEnabled) {
  contentToInsert = vipMemberSale.value; // Use vipMemberSale if vipSaleSwitch is toggled
} else if (isContentDiscoveryEnabled) {
  contentToInsert = bookSpotlight.value; // Use bookSpotlight if contentDiscoverySwitch is toggled
}

// Check if any toggle switch is enabled
//  if (!isVipSaleEnabled && !isContentDiscoveryEnabled) {
//    throw new Error("Neither toggle switch is enabled. No content will be inserted.");
//  }

// Define the comment to find
const commentToFind = '<!-- /Hero -->';

// Find the position of the comment in the HTML content
const commentPosition = htmlContent.indexOf(commentToFind);

if (commentPosition !== -1) {
  // Insert the content directly below the comment, with a blank row in between
  const newHtmlContent = 
    htmlContent.slice(0, commentPosition + commentToFind.length) + // Include the comment itself
    '\n\n' + // Add a blank row
    contentToInsert + // Add the new content
    '\n\n' + // Add another blank row for spacing
    htmlContent.slice(commentPosition + commentToFind.length); // Add the rest of the HTML content

  // Update the HTML content state
  htmlContentState.setValue(newHtmlContent);

  // Return a success message
  return "Content inserted successfully below the <!-- /Hero --> comment.";
} else {
  // Throw an error if the comment is not found
  throw new Error(`Comment "\${commentToFind}" not found in HTML content.`);
}
