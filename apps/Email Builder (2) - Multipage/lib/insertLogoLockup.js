// Check if the conditions are met to run this query
if ((featureSelect1.value === feature_image_left.value || featureSelect1.value === feature_image_right.value) && logoSwitch1.value === true) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Get the logo lockup content
  const logoLockupContent = feature_logoLockup.value;

  // Find the correct instance of the feature
const booklineComment = deviceSwitch.value
  ? `<!-- /Device Content Card ${booklineSelect1.value} -->`
  : `<!-- / Bookline ${booklineSelect1.value} -->`;
  
  //  const booklineComment = `<!-- / Bookline ${booklineSelect1.value} -->`;
  let searchStartIndex = htmlContent.indexOf(booklineComment);
  if (searchStartIndex === -1) {
    throw new Error(`Could not find bookline comment: ${booklineComment}`);
  }

  // Determine which feature type we're dealing with
  const featureStartComment = featureSelect1.value === feature_image_left.value ?
    '<!-- Master Email Feature Left -->' :
    '<!-- Master Email Feature Right -->';

  // Find the start of the feature
  let featureStartIndex = htmlContent.indexOf(featureStartComment, searchStartIndex);
  if (featureStartIndex === -1) {
    throw new Error(`Could not find start of feature after ${booklineComment}`);
  }

  // Define the comment to find
  const commentToFind = '<!-- Feature Text Content -->';

  // Find the position of the comment within this feature
  const commentPosition = htmlContent.indexOf(commentToFind, featureStartIndex);

  if (commentPosition !== -1) {
    // Insert the logo lockup content before the comment
    const newHtmlContent = htmlContent.slice(0, commentPosition) + '\n' +
    logoLockupContent + '\n' +
    htmlContent.slice(commentPosition);

    // Update the HTML content state
    htmlContentState.setValue(newHtmlContent);

    return "Logo lockup 1 inserted successfully.";
  } else {
    throw new Error(`Comment '${commentToFind}' not found in the correct feature.`);
  }
} else {
  return "Conditions not met to insert logo lockup 1.";
}
