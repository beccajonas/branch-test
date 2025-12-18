function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

// Ensure the Google Sheets data is available

if (getSheetsData.data && getSheetsData.data.length > 0) {
  // Get the current HTML content

  let htmlContent = htmlContentState.value;

  // Get the column index for the copy column

  const copyColIndex = letterToColumnIndex(copyColumn.value);

  // Determine which object to use based on heroSelect value

  const objToUse =
    heroSelect.value === hero_default.value || heroSelect.value === hero_image.value
      ? heroDefaultObj.value
      : //  ? heroReskinObj.value // This line is commented out and ignored

      heroSelect.value === hero_dual_was_now.value
      ? heroDualObj.value
      : heroReskinMenu.value == heroStackedLeft.value
      ? heroGenericStackedLeftObj.value
      : heroReskinMenu.value
      ? heroReskinObj.value
      : null; // or some other default

  if (!objToUse) throw new Error("No valid hero object selected.");

  // Iterate over the selected object array (containing placeholders and keywords)

  objToUse.forEach((obj) => {
    let keywordFound = false;

    let validCopyValue = false;

    let booklineFound = false;

    // Iterate over the getSheetsData.data array

    for (let i = 0; i < getSheetsData.data.length && !booklineFound; i++) {
      // Access the first column (email copy link deck) and the copy column

      const emailCopyLinkDeck = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]];

      const copyValue = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[copyColIndex]];

      // Check if emailCopyLinkDeck contains "Bookline" to stop iteration

      if (emailCopyLinkDeck && emailCopyLinkDeck.includes("Bookline")) {
        booklineFound = true;

        break;
      }

      // Check if any of the keywords are present in the emailCopyLinkDeck

      if (emailCopyLinkDeck) {
        // Keyword matching logic

        let keywordMatch = false;

        // Build a regex for the keyword(s) with word boundaries for more precise matching

        // 'i' for case-insensitive

        const keywordRegex = new RegExp(obj.keyword.map((k) => `\\b${k}\\b`).join("|"), "i");

        if (obj.placeholder === "HEADLINE") {
          // Exclude rows that contain both "Headline" and "Frame"

          // This still uses .includes(), consider if HEADLINE/Frame also need \b for precision

          keywordMatch = obj.keyword.some((keyword) => emailCopyLinkDeck.includes(keyword) && !emailCopyLinkDeck.includes("Frame"));
        } else {
          // Use the regex for more precise keyword matching for other placeholders

          keywordMatch = keywordRegex.test(emailCopyLinkDeck);
        }

        if (keywordMatch) {
          keywordFound = true;

          // Check if the copy value is valid (not empty or undefined)

          if (copyValue) {
            // Replace the placeholder with the copy value

            htmlContent = htmlContent.replace(obj.placeholder, copyValue);

            validCopyValue = true;
          }

          break; // Exit the loop once a match is found
        }
      }
    }

    //  console.log("For obj:", obj.keyword, "keywordFound:", keywordFound, "validCopyValue:", validCopyValue);

    // If no keyword match is found or the copy value is not valid, remove the text between startComment and endComment

    if (!keywordFound || !validCopyValue) {
      const startComment = `<!--\\s*${obj.startComment}\\s*-->`;

      const endComment = `<!--\\s*/\\s*${obj.endComment}\\s*-->`;

      const regex = new RegExp(`${startComment}[\\s\\S]*?${endComment}`, "g");

      // Check if this section contains pricing information

      const sectionContent = htmlContent.match(regex);

      if (sectionContent) {
        const hasPricing = sectionContent[0].includes("$") && !sectionContent[0].includes("$X.XX") && !sectionContent[0].includes("${PROMOCODE}");

        if (!hasPricing) {
          // Remove the section only if it doesn't contain actual pricing

          htmlContent = htmlContent.replace(regex, "");
        }
      }
    }
  });

  // --- NEW LOGIC: Remove special pricing blocks for dual was/now hero type ---

  if (heroSelect.value === hero_dual_was_now.value) {
    // Define keyword groups and their corresponding HTML blocks to remove

    const nowPriceKeywords = ["eBook Price", "Now Price (if required)"];

    const audioBookPriceKeywords = ["Audio book Price", "Now Price (if required)"];

    // Define the exact HTML blocks as regex patterns (allowing for whitespace)

    const nowPriceBlock = `<tr>\\s*<td height="16"[^>]*>&nbsp;<\\/td>\\s*<\\/tr>\\s*<tr>\\s*<td width="251"[^>]*>\\s*<!-- NOW PRICING BELOW -->\\s*\\$X\\.XX\\s*<\\/td>\\s*<\\/tr>`;

    const audioBookPriceBlock = `<tr>\\s*<td height="16"[^>]*>&nbsp;<\\/td>\\s*<\\/tr>\\s*<tr>\\s*<td width="251"[^>]*>\\s*<!-- SECOND NOW PRICING -->\\s*FREE or \\$X\\.XX\\s*<\\/td>\\s*<\\/tr>`;

    // Helper to check if a keyword is present and has a valid copy value

    function isKeywordPresentAndValid(keyword) {
      for (let i = 0; i < getSheetsData.data.length; i++) {
        const emailCopyLinkDeck = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]];

        const copyValue = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[copyColIndex]];

        // Use the word boundary regex here as well for consistency

        const keywordRegex = new RegExp(`\\b${keyword}\\b`, "i");

        if (emailCopyLinkDeck && keywordRegex.test(emailCopyLinkDeck)) {
          return !!copyValue;
        }
      }

      return false;
    }

    // Remove Now Price block if both keywords missing or invalid

    const nowPriceMissingOrInvalid = !nowPriceKeywords.some(isKeywordPresentAndValid);

    if (nowPriceMissingOrInvalid) {
      const nowPriceRegex = new RegExp(nowPriceBlock, "g");

      htmlContent = htmlContent.replace(nowPriceRegex, "");
    }

    // Remove Audio Book Price block if both keywords missing or invalid

    const audioBookPriceMissingOrInvalid = !audioBookPriceKeywords.some(isKeywordPresentAndValid);

    if (audioBookPriceMissingOrInvalid) {
      const audioBookPriceRegex = new RegExp(audioBookPriceBlock, "g");

      htmlContent = htmlContent.replace(audioBookPriceRegex, "");
    }

    // Remove the 30-Day Trial section only for the dual was/now hero type

    const trialStartComment = "<!-- 30-DAY TRIAL DELETE IF NOT NEEDED -->";

    const trialEndComment = "<!-- / 30-DAY TRIAL -->";

    const trialRegex = new RegExp(`${trialStartComment}[\\s\\S]*?${trialEndComment}`, "g");

    htmlContent = htmlContent.replace(trialRegex, "");
  }

  // Update the htmlContentState with the modified HTML content

  htmlContentState.setValue(htmlContent);
} else {
  throw new Error("Google Sheets data is not available or insufficient.");
}
