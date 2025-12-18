// insertFeature3 query

let htmlContent = htmlContentState.value;

let featureValue;

if (featureSelect3.value=="None") {
  featureValue = featureReskinSelect3.value;
} else {
  featureValue = featureSelect3.value;
};
const booklineValue = booklineSelect3.value; // Note: This is booklineSelect3.value

// --- HARDCODED COMMENTS FOR THE INSERTED BLOCK ---
const insertedBlockStartComment = '<!-- FEATURE 3 -->';
const insertedBlockEndComment = '<!-- /FEATURE 3 -->';
// --------------------------------------------------

// Determine the target comment based on deviceSwitch and booklineValue
let commentToFind;

// --- UPDATED LOGIC FOR commentToFind ---
if (booklineValue === 0) {
  commentToFind = '<!-- /Hero -->';
} else if (booklineValue === "DeviceBookline") {
  commentToFind = '<!--/ Device Bookline WAS/NOW-->';
} else if (deviceSwitch.value) {
  commentToFind = `<!-- /Device Content Card ${booklineValue} -->`;
} else {
  commentToFind = `<!-- / Bookline ${booklineValue} -->`;
}
// --- END UPDATED LOGIC ---

// Determine if and how to wrap the feature value
// Note: This is dcrSelect3.value
const valueToInsertRaw = dcrSelect3.value !== "None" ?
  `<#if ${dcrSelect3.value}>\n${featureValue}\n</#if>` :
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
