// insertCallout query

let htmlContent = htmlContentState.value;
const calloutValue = calloutSelect.value;
const booklineValue = calloutLocation.value; // This can now be a number (0, 1, 2, etc.) or the string "DeviceBookline"

let commentToFind;

// Determine the target comment based on booklineValue and deviceSwitch
if (booklineValue === 0) {
  // If booklineValue is 0, it means "Below Hero"
  commentToFind = '<!-- /Hero -->';
} else if (booklineValue === "DeviceBookline") { // <--- NEW CONDITION HERE
  // If booklineValue is the specific string "DeviceBookline"
  commentToFind = '<!--/ Device Bookline WAS/NOW-->'; // <--- NEW COMMENT STRING HERE
} else if (deviceSwitch.value) {
  // If in device mode (and not "DeviceBookline" string), use the dynamic device content card comment
  commentToFind = `<!-- /Device Content Card ${booklineValue} -->`;
} else {
  // For regular booklines
  commentToFind = `<!-- / Bookline ${booklineValue} -->`;
}

const commentPosition = htmlContent.indexOf(commentToFind);

if (commentPosition !== -1) {
  // Insert AFTER the closing comment
  const insertionPoint = commentPosition + commentToFind.length;

  const newHtmlContent = htmlContent.slice(0, insertionPoint) + '\n\n' + calloutValue + '\n\n' + htmlContent.slice(insertionPoint);

  htmlContentState.setValue(newHtmlContent);

  return `Callout value inserted successfully below "${commentToFind}".`;

} else {
  throw new Error(`Target comment "${commentToFind}" not found in HTML content.`);
}
