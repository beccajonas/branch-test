// insertFeatureNew query

let htmlContent = htmlContentState.value;

let featureValue;

if (featureSelect1.value=="None") {
  featureValue = featureReskinSelect1.value;
} else {
  featureValue = featureSelect1.value;
}

const booklineValue = booklineSelect1.value; // This can now be a number (1, 2, 3, etc.) or the string "DeviceBookline"

// --- HARDCODED COMMENTS FOR THE INSERTED BLOCK ---
const insertedBlockStartComment = '<!-- FEATURE 1 -->';
const insertedBlockEndComment = '<!-- /FEATURE 1 -->';
// --------------------------------------------------

// Determine the target comment based on deviceSwitch and booklineValue
let commentToFind;

// --- UPDATED LOGIC FOR commentToFind ---
if (booklineValue === 0) { // New: Handle the specific "DeviceBookline" string value
  commentToFind = '<!-- /Hero -->';
} else if (booklineValue === "DeviceBookline") { // New: Handle the specific "DeviceBookline" string value
  commentToFind = '<!--/ Device Bookline WAS/NOW-->';
} else if (deviceSwitch.value) { // Existing: Handle numerical device content card
  commentToFind = `<!-- /Device Content Card ${booklineValue} -->`;
} else { // Existing: Handle numerical regular bookline
  commentToFind = `<!-- / Bookline ${booklineValue} -->`;
}
// --- END UPDATED LOGIC ---

// Determine if and how to wrap the feature value
const valueToInsertRaw = dcrSelect1.value !== "None" ?
  `<#if ${dcrSelect1.value}>\n${featureValue}\n</#if>` :
  featureValue;

// --- NEW LOGIC: Wrap the raw value with hardcoded HTML comments ---
// This will always wrap the content with these specific comments.
const valueToInsertWrapped = `${insertedBlockStartComment}\n${valueToInsertRaw}\n${insertedBlockEndComment}`;
// --------------------------------------------------------

const commentPosition = htmlContent.indexOf(commentToFind);

if (commentPosition !== -1) {
  // Insert AFTER the closing comment
  // Use the newly wrapped value: valueToInsertWrapped
  const newHtmlContent = htmlContent.slice(0, commentPosition + commentToFind.length) + '\n\n' + valueToInsertWrapped + '\n' + htmlContent.slice(commentPosition + commentToFind.length);

  htmlContentState.setValue(newHtmlContent);

  return "Feature value inserted successfully with a blank row above.";

} else {
  throw new Error(`Comment "${commentToFind}" not found in HTML content.`);
}
