// undoFeature1 query (Removes the populated feature entirely)

let htmlContent = htmlContentState.value;

// Get the bookline value for this feature (can be number or "DeviceBookline")
const booklineValue = booklineSelect1.value;

// Determine the starting comment (where the feature was inserted AFTER)
// This logic must match `insertFeatureNew`'s `commentToFind`
let searchContextComment; // This is the comment *after which* the feature lives

if (booklineValue === 0) { // New: Handle the specific "DeviceBookline" string value
  searchContextComment = '<!-- /Hero -->';
} else if (booklineValue === "DeviceBookline") {
  searchContextComment = '<!--/ Device Bookline WAS/NOW-->';
} else if (deviceSwitch.value) {
  searchContextComment = `<!-- /Device Content Card ${booklineValue} -->`;
} else {
  searchContextComment = `<!-- / Bookline ${booklineValue} -->`;
}

// Determine the master feature comments (like `populateFeatureNew` does)
// These define the outer boundaries of the feature block itself.
let featureStartComment;
let featureEndComment;

if (featureSelect1.value === feature_image_right.value) {
  featureStartComment = '<!-- Master Email Feature Right -->';
  featureEndComment = '<!-- /Master Email Feature Right -->';
} else if (featureSelect1.value === feature_image_left.value) {
  featureStartComment = '<!-- Master Email Feature Left -->';
  featureEndComment = '<!-- /Master Email Feature Left -->';
} else if (featureSelect1.value === blog_feature_horizontal.value) {
  featureStartComment = '<!-- Master Email Feature Blog Horizontal -->';
  featureEndComment = '<!-- /Master Email Feature Blog Horizontal -->';
} else if (featureSelect1.value === trustpilot_review.value) {
featureStartComment = '<!--TRUSTPILOT REVIEW-->';
  featureEndComment = '<!--/ TRUSTPILOT REVIEW-->';
} else if (featureSelect1.value === "None") {
featureStartComment = '<!-- FEATURE 1 -->';
  featureEndComment = '<!-- /FEATURE 1 -->';
} else {
  throw new Error("Invalid featureSelect1 value for removing feature.");
}

// --- FIND THE BOUNDARIES OF THE POPULATED FEATURE IN THE CURRENT HTML ---
// 1. Find the `searchContextComment` (e.g., <!-- / Bookline 1 -->)
const commentPosition = htmlContent.indexOf(searchContextComment);
if (commentPosition === -1) {
  throw new Error(`Could not find the context comment: ${searchContextComment}`);
}
const searchAreaStart = commentPosition + searchContextComment.length;

// 2. Find the feature's start comment within the HTML, starting from `searchAreaStart`
const populatedFeatureStartIndex = htmlContent.indexOf(featureStartComment, searchAreaStart);
if (populatedFeatureStartIndex === -1) {
  throw new Error(`Could not find the start of the feature (${featureStartComment}) after ${searchContextComment}.`);
}

// 3. Find the feature's end comment within the HTML, starting from `populatedFeatureStartIndex`
const populatedFeatureEndIndex = htmlContent.indexOf(featureEndComment, populatedFeatureStartIndex);
if (populatedFeatureEndIndex === -1) {
  throw new Error(`Could not find the end of the feature (${featureEndComment}) starting from its start comment.`);
}

// Calculate the end of the *entire populated feature block* (including its end comment)
// This is the point *after* the entire feature, including its closing comment.
const endOfPopulatedFeatureBlock = populatedFeatureEndIndex + featureEndComment.length;

// --- REMOVE THE POPULATED FEATURE BLOCK ---
// Slice out the section from `populatedFeatureStartIndex` to `endOfPopulatedFeatureBlock`.
// This effectively removes the entire feature block from the HTML.
const newHtmlContent = htmlContent.slice(0, populatedFeatureStartIndex) +
                       htmlContent.slice(endOfPopulatedFeatureBlock);

// Optional: Clean up extra newlines if the removal leaves too many.
// This is a common issue with string-based HTML manipulation.
// For example, if you remove `\n\n[FEATURE]\n\n`, you might be left with `\n\n\n\n`.
// A simple way to clean up:
// newHtmlContent = newHtmlContent.replace(/\n{4,}/g, '\n\n\n'); // Replace 4+ newlines with 3

htmlContentState.setValue(newHtmlContent);

return "Feature removed successfully.";
