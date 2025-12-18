// removeCallout query - MINIMAL FUNCTIONAL CHANGES

let htmlContent = htmlContentState.value;
const calloutValue = calloutSelect.value;
const booklineValue = calloutLocation.value; // Numerical value (0, 1, 2, etc.) or string "DeviceBookline"

// --- 1. Align `targetClosingComment` with `insertCallout` ---
let targetClosingComment; // This will be the CLOSING comment of the section

if (booklineValue === 0) {
  targetClosingComment = '<!-- /Hero -->';
} else if (booklineValue === "DeviceBookline") { // <--- NEW CONDITION HERE
  targetClosingComment = '<!--/ Device Bookline WAS/NOW-->'; // <--- NEW COMMENT STRING HERE
} else if (deviceSwitch.value) {
  targetClosingComment = `<!-- /Device Content Card ${booklineValue} -->`;
} else {
  targetClosingComment = `<!-- / Bookline ${booklineValue} -->`;
}
// --- END 1 ---

const commentPosition = htmlContent.indexOf(targetClosingComment);

if (commentPosition !== -1) {
  // --- 2. Define the exact string that was inserted ---
  const fullCalloutString = '\n\n' + calloutValue + '\n\n';

  // --- 3. Define the start of the search area (immediately after the closing comment) ---
  const searchAreaStart = commentPosition + targetClosingComment.length;

  // --- 4. Find the fullCalloutString within this specific search area ---
  const calloutRemovalStartIndex = htmlContent.indexOf(fullCalloutString, searchAreaStart);

  if (calloutRemovalStartIndex !== -1) {
    // --- 5. Perform the removal using slice ---
    const newHtmlContent = htmlContent.slice(0, calloutRemovalStartIndex) +
                           htmlContent.slice(calloutRemovalStartIndex + fullCalloutString.length);

    htmlContentState.setValue(newHtmlContent);
    return "Callout value removed successfully.";
  } else {
    // --- 6. Update error message for clarity ---
    throw new Error(`Callout (including surrounding newlines) not found after "${targetClosingComment}" in HTML content.`);
  }

} else {
  throw new Error(`Target closing comment "${targetClosingComment}" not found in HTML content.`);
}
