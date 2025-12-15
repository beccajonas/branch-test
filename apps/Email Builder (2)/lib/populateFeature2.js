// Function to convert a letter to a column index (0-based)
function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

// Ensure the Google Sheets data is available
if (getSheetsData.data && getSheetsData.data.length > 0) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;
  // Get the column index for the copy column
  const copyColIndex = letterToColumnIndex(copyColumn.value);
  // Get the starting row (subtract 1 because array is 0-indexed)
  const startingRow = startRow2.value - 1;

  // Determine which object to use based on featureSelect1
  let featureObj;
  let featureStartComment;
  let featureEndComment;

  if (featureSelect2.value === feature_image_right.value) {
    featureObj = ftRightObj.value;
    featureStartComment = '<!-- Master Email Feature Right -->';
    featureEndComment = '<!-- /Master Email Feature Right -->';
  } else if (featureSelect2.value === feature_image_left.value) {
    featureObj = ftLeftObj.value;
    featureStartComment = '<!-- Master Email Feature Left -->';
    featureEndComment = '<!-- /Master Email Feature Left -->';
  } else if (featureSelect2.value === blog_feature_horizontal.value) {
    featureObj = ftBlogObj.value;
    featureStartComment = '<!-- Master Email Feature Blog Horizontal -->';
    featureEndComment = '<!-- /Master Email Feature Blog Horizontal -->';
  } else if (featureSelect2.value === trustpilot_review.value) {
    featureObj = trustpilotObj.value;
    featureStartComment = '<!--TRUSTPILOT REVIEW-->';
    featureEndComment = '<!--/ TRUSTPILOT REVIEW-->'
  } else if (featureReskinSelect2.value != "None") { // Changed from featureReskinSelect1
    featureObj = ftReskinObj.value;
    featureStartComment = '<!-- FEATURE 2 -->'; // Comment updated for Feature 2
    featureEndComment = '<!-- /FEATURE 2 -->'; // Comment updated for Feature 2
  } else {
    throw new Error("Invalid featureSelect2 value");
  }

  // Ensure featureObj is an array
  if (!Array.isArray(featureObj)) {
    throw new Error("featureObj is not an array: " + JSON.stringify(featureObj));
  }

  // Find the correct instance of the feature
  // --- ALIGNMENT CHANGE START ---
  let booklineComment;
  if (booklineSelect2.value === 0) {
    booklineComment = '<!-- /Hero -->';
  } else if (booklineSelect2.value === "DeviceBookline") {
    booklineComment = '<!--/ Device Bookline WAS/NOW-->';
  } else if (deviceSwitch.value) {
    booklineComment = `<!-- /Device Content Card ${booklineSelect2.value} -->`;
  } else {
    booklineComment = `<!-- / Bookline ${booklineSelect2.value} -->`;
  }
  // --- ALIGNMENT CHANGE END ---

  let searchStartIndex = htmlContent.indexOf(booklineComment);
  if (searchStartIndex === -1) {
    throw new Error(`Could not find bookline comment: ${booklineComment}`);
  }

  let featureStartIndex = htmlContent.indexOf(featureStartComment, searchStartIndex);
  if (featureStartIndex === -1) {
    throw new Error(`Could not find start of feature after ${booklineComment}`);
  }

  let featureEndIndex = htmlContent.indexOf(featureEndComment, featureStartIndex);
  if (featureEndIndex === -1) {
    throw new Error(`Could not find end of feature starting at ${featureStartComment}`);
  }

  // Extract the current feature's HTML
  let featureHtml = htmlContent.slice(featureStartIndex, featureEndIndex + featureEndComment.length);

  let topperRemoved = false;
  // --- NEW: Track status for "Promo Line" ---
  let promoLineStatus = {
    keywordFound: false,
    validCopyValue: false
  };

  // Iterate over the featureObj array (containing placeholders and keywords)
  featureObj.forEach((obj) => {
    let keywordFound = false;
    let validCopyValue = false;
    let booklineFound = false;

    // Iterate over the getSheetsData.data array, starting from startingRow
    for (let i = startingRow; i < getSheetsData.data.length && !booklineFound; i++) {
      // Access the first column (email copy link deck) and the copy column
      const emailCopyLinkDeck = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]];
      const copyValue = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[copyColIndex]];

      // Check if emailCopyLinkDeck contains "Bookline" to stop iteration
      if (emailCopyLinkDeck && emailCopyLinkDeck.includes("Bookline")) {
        booklineFound = true;
      }

      // Check if any of the keywords are present in the emailCopyLinkDeck
      if (emailCopyLinkDeck) {
        const keywordMatch = obj.keyword.some(keyword => emailCopyLinkDeck.includes(keyword));

        if (keywordMatch) {
          keywordFound = true;
          // Check if the copy value is valid (not empty or undefined)
          if (copyValue) {
            // Replace the placeholder with the copy value
            featureHtml = featureHtml.replace(obj.placeholder, copyValue);
            validCopyValue = true;
          }

          // --- NEW: Update promoLineStatus if this obj is for "Promo Line" ---
          if (obj.keyword.includes("Promo Line")) {
            promoLineStatus.keywordFound = true;
            promoLineStatus.validCopyValue = validCopyValue; // Use the validCopyValue from this specific match
          }
          // --- END NEW ---

          break; // Exit the loop once a match is found for this obj.
        }
      }
    }

    // If no keyword match is found or the copy value is not valid, remove the content between comments
    if (!keywordFound || !validCopyValue) {
      // Create a regex that matches both comment formats
      const startComment = `<!--\\s*${obj.startComment}\\s*-->`;
      const endComment = `<!--\\s*/${obj.endComment}\\s*-->`;
      const regex = new RegExp(`${startComment}[\\s\\S]*?${endComment}`, 'gi');

      // Store the original content length
      const originalLength = featureHtml.length;
      // Attempt to remove the content
      featureHtml = featureHtml.replace(regex, '');

      // Check if content was actually removed and if it was the Topper
      if (featureHtml.length !== originalLength && obj.keyword.includes("Topper")) {
        topperRemoved = true;
      }
    }
  });

  // --- NEW REMOVAL LOGIC: Delete "PROMO LINE" text if conditions met ---
  // IMPORTANT: Changed featureReskinSelect1 to featureReskinSelect2
  const featureReskinLabel = featureReskinSelect2.selectedLabel;
  if (
    
    (!promoLineStatus.keywordFound || !promoLineStatus.validCopyValue) // Check if keyword wasn't found OR didn't have valid copy
  ) {
    featureHtml = featureHtml.replace(/PROMO LINE/g, ''); // Delete all occurrences of "PROMO LINE"
    //  console.log("Removed 'PROMO LINE' text due to missing keyword/invalid copy and feature type.");
  }
  // --- END NEW REMOVAL LOGIC ---

  // If Topper was removed and logoSwitch1 is false, also remove the SPACER
  // IMPORTANT: Changed logoSwitch1 to logoSwitch2
  if (topperRemoved && !logoSwitch2.value) {
    const spacerStartComment = `<!--\\s*SPACER - Delete if no VIP/Topper/Logo LockUp\\s*-->`;
    const spacerEndComment = `<!--\\s*/SPACER\\s*-->`;
    const spacerRegex = new RegExp(`${spacerStartComment}[\\s\\S]*?${spacerEndComment}`, 'gi');
    featureHtml = featureHtml.replace(spacerRegex, '');
  }

  // If Topper was removed and logoSwitch1 is true, remove the specified SPACER from logo lockup
  // IMPORTANT: Changed logoSwitch1 to logoSwitch2
  if (topperRemoved && logoSwitch2.value) {
    const logoLockupSpacerRegex = /<tr>\s*<!--\s*SPACER - Delete if no Topper\s*-->\s*<td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;<\/td>\s*<\/tr>\s*<!--\s*\/SPACER\s*-->/gi;
    featureHtml = featureHtml.replace(logoLockupSpacerRegex, '');
  }

  // Replace FEATURE1_LINK with FEATURE2_LINK
  featureHtml = featureHtml.replace(/FEATURE1_LINK/g, 'FEATURE2_LINK');

  // Replace the original feature HTML with the updated feature HTML
  htmlContent = htmlContent.slice(0, featureStartIndex) + featureHtml + htmlContent.slice(featureEndIndex + featureEndComment.length);

  // Update the htmlContentState with the modified HTML content
  htmlContentState.setValue(htmlContent);

} else {
  throw new Error("Google Sheets data is not available or insufficient.");
}
