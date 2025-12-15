// Function to convert a letter to a column index (0-based)
function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

// Check if the hero type is 'image'
if (heroSelect.value === hero_image.value || heroReskinMenu.value == heroSpotlight.value) {
  // Ensure the Google Sheets data is available
  if (getSheetsData.data && getSheetsData.data.length > 0) {
    // Get the column index for the copy column
    const copyColIndex = letterToColumnIndex(copyColumn.value);
    // Use heroDefaultObj for this hero type
    const objToUse = heroDefaultObj.value;
    // Set to store unique copy values
    let copyValuesSet = new Set();

    // Iterate over the heroDefaultObj array, starting from the third item (index 2)
    objToUse.slice(2).forEach((obj) => {
      let keywordFound = false;
      let booklineFound = false;

      // Iterate over the getSheetsData.data array
      for (let i = 0; i < getSheetsData.data.length && !booklineFound; i++) {
        // Access the first column (email copy link deck) and the copy column
        const emailCopyLinkDeck = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]];
        let copyValue = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[copyColIndex]];

        // Check if emailCopyLinkDeck contains "Bookline" to stop iteration
        if (
          emailCopyLinkDeck &&
          (emailCopyLinkDeck.includes("Bookline") ||
            emailCopyLinkDeck.includes("Copy beneath hero") ||
            emailCopyLinkDeck.includes("OtherCondition2"))
        ) {
          booklineFound = true;
          break;
        }


        // Check if any of the keywords are present in the emailCopyLinkDeck
        if (emailCopyLinkDeck) {
          // Modified keyword matching logic
          let keywordMatch = false;
          if (obj.placeholder === "HEADLINE") {
            // Exclude rows that contain both "Headline" and "Frame"
            keywordMatch = obj.keyword.some(keyword => emailCopyLinkDeck.includes(keyword) && !emailCopyLinkDeck.includes("Frame"));
          } else {
            // Use the default keyword matching logic for other placeholders
            keywordMatch = obj.keyword.some(keyword => emailCopyLinkDeck.includes(keyword));
          }

          if (keywordMatch) {
            keywordFound = true;

            // Check if the copy value is valid (not empty or undefined)
            if (copyValue) {
              // Remove <br> and <br/> tags
              copyValue = copyValue.replace(/<br\s*\/?>/gi, '');

              // Add the copy value to the set (this ensures uniqueness)
              copyValuesSet.add(copyValue.trim());
            }
            break; // Exit the loop once a match is found
          }
        }
      }
    });

    // Convert the set back to an array
    let copyValues = Array.from(copyValuesSet);

    // Concatenate the copy values with proper punctuation
    let result = copyValues.reduce((acc, val, index) => {
      if (index === 0) {
        return val;
      } else {
        const lastChar = acc.slice(-1);
        if (lastChar === '.' || lastChar === '?' || lastChar === '!') {
          return acc + ' ' + val;
        } else {
          return acc + '. ' + val;
        }
      }
    }, '');

    // Get the current HTML content
    let htmlContent = htmlContentState.value;

    // Replace "Get the eBook" with the concatenated text
    if (heroReskinMenu.value == heroSpotlight.value) {
    htmlContent = htmlContent.replace('Hero Image Alt', result);
    } else {
    htmlContent = htmlContent.replace('Get the eBook', result);
    }
    
    // Update the HTML content state
    htmlContentState.setValue(htmlContent);

    return "Hero image text updated successfully.";
  } else {
    return "Google Sheets data is not available or insufficient.";
  }
} else {
  return "This query only runs for the image hero type.";
}
