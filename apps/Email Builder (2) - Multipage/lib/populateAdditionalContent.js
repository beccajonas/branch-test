// Function to convert a letter to a column index (0-based)
function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

// Ensure the Google Sheets data is available
if (getSheetsData.data && getSheetsData.data.length > 0) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Define variables for the object, start comment, and end comment
  let objToUse;
  let sectionStartComment; // Renamed to avoid conflict with obj.startComment
  let sectionEndComment;   // Renamed to avoid conflict with obj.endComment

  // Determine which object and comments to use based on the switches
  if (contentDiscoverySwitch.value) {
    try {
      objToUse = JSON.parse(JSON.stringify(bookSpotlightObj.value));
      //  console.log("Using bookSpotlightObj");
    } catch (e) {
      throw new Error("Error parsing bookSpotlightObj.value: " + e);
    }
    sectionStartComment = '<!-- BOOK SPOTLIGHT -->';
    sectionEndComment = '<!-- /BOOK SPOTLIGHT -->';
  } else if (vipSaleSwitch.value) {
    try {
      objToUse = JSON.parse(JSON.stringify(vipSaleObj.value));
      //  console.log("Using vipSaleObj");
    } catch (e) {
      throw new Error("Error parsing vipSaleObj.value: " + e);
    }
    sectionStartComment = '<!-- VIP MEMBERSHIP SALE -->';
    sectionEndComment = '<!-- /VIP MEMBERSHIP SALE -->';
  } else {
    // If neither switch is true, exit the query
    console.log("Neither contentDiscoverySwitch nor vipSaleSwitch is true. Exiting query.");
    return;
  }

  // Check if objToUse is an array
  if (!Array.isArray(objToUse)) {
    throw new Error("objToUse is not an array: " + JSON.stringify(objToUse));
  }

  // Get the column index for the copy column
  const copyColIndex = letterToColumnIndex(copyColumn.value);

  // Dynamically determine the starting row by searching for the appropriate text in the first column
  let startingRow;
  if (contentDiscoverySwitch.value) {
    startingRow = getSheetsData.data.findIndex((row) => {
      const emailCopyLinkDeck = row[Object.keys(row)[0]]; // Access the first column
      return emailCopyLinkDeck && emailCopyLinkDeck.includes("Copy beneath hero");
    });
  } else if (vipSaleSwitch.value) {
    startingRow = getSheetsData.data.findIndex((row) => {
      const emailCopyLinkDeck = row[Object.keys(row)[0]]; // Access the first column
      return emailCopyLinkDeck && (emailCopyLinkDeck.includes("Copy beneath hero") || emailCopyLinkDeck.includes("Promotional Callout"));
    });
  }

  // If the starting row is not found, throw an error
  if (startingRow === -1) {
    throw new Error(`Could not find the appropriate text in the Google Sheets data.`);
  }

  // Locate the component in the HTML
  const startIndex = htmlContent.indexOf(sectionStartComment);
  const endIndex = htmlContent.indexOf(sectionEndComment, startIndex);

  if (startIndex === -1 || endIndex === -1) {
    throw new Error("Could not find comments in the HTML content.");
  }

  // Extract the current HTML section to work on
  let sectionHtml = htmlContent.slice(
    startIndex,
    endIndex + sectionEndComment.length
  );

  // Row offset to ensure each "Headline" instance starts searching from the next unmatched row
  let rowOffset = startingRow;

  // Iterate over the object array (containing placeholders and keywords)
  objToUse.forEach((obj) => {
    let keywordFound = false;
    let validCopyValue = false;
    let currentRowOffset = rowOffset; // Use a temporary offset for this obj's search

    // Iterate over the getSheetsData.data array, starting from the current rowOffset
    for (let i = currentRowOffset; i < getSheetsData.data.length; i++) { // Removed booklineFound for now, assuming it's not needed here
      // Access the first column (emailCopyLinkDeck) and the copy column
      const emailCopyLinkDeck = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]];
      const copyValue = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[copyColIndex]];

      // Check if any of the keywords are present in the emailCopyLinkDeck
      if (emailCopyLinkDeck) {
        const keywordMatch = obj.keyword.some((keyword) => emailCopyLinkDeck.includes(keyword));

        if (keywordMatch) {
          keywordFound = true;

          // Check if the copy value is valid (not empty or undefined)
          if (copyValue) {
            let priceValue = copyValue; // Initialize priceValue with copyValue

            // Clean up the price values for "Was", "Now", and "Save"
            if (obj.placeholder === "XX.XX" && (obj.keyword.includes("Now") || obj.keyword.includes("Was") || obj.keyword.includes("Save"))) {
              // Remove any leading text and keep only the numeric value and currency symbol
              priceValue = copyValue.replace(/^[^\d]*?([\$€$\£CHF]*[\d.,\s]+[\$€$\£CHF]*)$/i, '$1').trim();
            }

            // Replace the placeholder with the copy value
            if (obj.placeholder === "BOOK TITLE") {
              sectionHtml = sectionHtml.replace(new RegExp(`>(?:\\s*)BOOK TITLE(?:\\s*)<`, "g"), `>${copyValue}<`);
               sectionHtml = sectionHtml.replace(new RegExp(`"(?:\\s*)Cosmos(?:\\s*)`, "g"), `"${copyValue} `);
            } else if (obj.placeholder === "AUTHOR") {
              sectionHtml = sectionHtml.replace(new RegExp(`>(?:\\s*)AUTHOR(?:\\s*)<`, "g"), `>${copyValue}<`);
             sectionHtml = sectionHtml.replace(new RegExp(`(?:\\s*)Carl Sagan(?:\\s*)`, "g"), (match, p1) => {
              let replacement = ` ${copyValue}`;
              if (copyValue && copyValue.toLowerCase().startsWith("par ")) {
                replacement = ` ${copyValue.substring(4)}`; // Remove "par "
              }
              return replacement;
            });
            } else if (obj.placeholder === "CTA COPY") {
              sectionHtml = sectionHtml.replace(new RegExp(`>(?:\\s*)CTA COPY(?:\\s*)<`, "g"), `>${copyValue}<`);
            } else if (obj.placeholder === "XX.XX" && obj.keyword.includes("Now")) {
              sectionHtml = sectionHtml.replace(new RegExp(`<!-- PASTE LARGE NOW PRICE BELOW -->(?:\\s*)XX.XX(?:\\s*)</td>`, "g"), `<!-- PASTE LARGE NOW PRICE BELOW -->${priceValue}</td>`);
            } else if (obj.placeholder === "XX.XX" && obj.keyword.includes("Was")) {
              sectionHtml = sectionHtml.replace(new RegExp(`\\$\\{MT_COPY_WAS\\}:(?:\\s*)<span style="text-decoration:line-through;">(?:\\s*)XX.XX(?:\\s*)</span>`, "g"), `\$\{MT_COPY_WAS\}: <span style="text-decoration:line-through;">${priceValue}</span>`);
            } else if (obj.placeholder === "XX.XX" && obj.keyword.includes("Save")) {
              sectionHtml = sectionHtml.replace(new RegExp(`\\$\\{MT_COPY_SAVE\\}:(?:\\s*)XX.XX(?:\\s*)</td>`, "g"), `\$\{MT_COPY_SAVE\}: ${priceValue}</td>`);
            } else if (obj.placeholder === "HEADLINE") {
              sectionHtml = sectionHtml.replace(new RegExp(`<td width="518" style="color:#000000;font-family: Trebuchet MS;font-size: 32px;font-weight: 400;line-height: 37px;letter-spacing: 0px;text-align: center;">(?:\\s*)HEADLINE(?:\\s*)</td>`, "g"), `<td width="518" style="color:#000000;font-family: Trebuchet MS;font-size: 32px;font-weight: 400;line-height: 37px;letter-spacing: 0px;text-align: center;">${copyValue}</td>`);
            } else if (obj.placeholder === "${PROMOCODE}" && obj.keyword.includes("PROMO CODE")) {
              const capitalizedWords = copyValue.match(/\b[A-Z0-9]+\b/g);
              const capitalizedPromoCode = capitalizedWords ? capitalizedWords.join(" ") : "";
              const textAfterPromoCode = copyValue.replace(/^.*?\b[A-Z0-9]+\b\s*/g, "").trim();
              sectionHtml = sectionHtml.replace(new RegExp(`\\$\\{PROMOCODE\\}`, "g"), capitalizedPromoCode);
              sectionHtml = sectionHtml.replace(new RegExp(`at checkout to get your first <span style="font-weight:bold;">FREE </span>eBook`, "g"), textAfterPromoCode);
            } else {
              sectionHtml = sectionHtml.replace(obj.placeholder, copyValue);
            }
            validCopyValue = true;

            // Update the rowOffset to start from the next row for the next "Headline" instance
            if (obj.keyword.includes("Headline")) {
              rowOffset = i + 1; // Update the main rowOffset
            }
            break; // Exit the loop once a match is found
          }
        }
      }
    }

    // --- Conditional block removal logic (copied from populateCopy) ---
    if (!keywordFound || !validCopyValue) {
      console.log("populateAdditionalContent: Attempting to remove block for:", obj.placeholder);
      console.log("populateAdditionalContent: obj.startComment:", obj.startComment);
      console.log("populateAdditionalContent: obj.endComment:", obj.endComment);

      // Ensure obj.startComment and obj.endComment exist before constructing regex
      if (obj.startComment && obj.endComment) {
        const startCommentRegexPart = `<!--\\s*${obj.startComment}\\s*-->`;
        const endCommentRegexPart = `<!--\\s*/\\s*?${obj.endComment}\\s*-->`; // Using flexible regex for end comment
        const regex = new RegExp(`${startCommentRegexPart}[\\s\\S]*?${endCommentRegexPart}`, 'g');
        console.log("populateAdditionalContent: Generated Removal Regex:", regex);

        const sectionContentMatch = sectionHtml.match(regex); // Match within sectionHtml
        if (sectionContentMatch) {
          // Use the more robust pricing check from populateCopy
          const hasPricing = sectionContentMatch[0].includes("$") && !sectionContentMatch[0].includes("$X.XX") && !sectionContentMatch[0].includes("${PROMOCODE}") && !sectionContentMatch[0].includes("${MT_COPY_BY}");

          if (!hasPricing) {
            // Remove the section only if it doesn't contain actual pricing
            sectionHtml = sectionHtml.replace(regex, ''); // Replace within sectionHtml
            console.log("populateAdditionalContent: Block REMOVED for:", obj.placeholder);
          } else {
            console.log("populateAdditionalContent: Block NOT removed for:", obj.placeholder, "because it was detected as having pricing.");
          }
        } else {
          console.log("populateAdditionalContent: Regex did not find the section to remove for:", obj.placeholder);
        }
      } else {
        console.log("populateAdditionalContent: obj.startComment or obj.endComment missing for:", obj.placeholder, ". Skipping removal attempt.");
      }
    }
    // --- End conditional block removal logic ---

  });

  // Replace the original HTML with the updated HTML
  htmlContent =
    htmlContent.slice(0, startIndex) +
    sectionHtml +
    htmlContent.slice(endIndex + sectionEndComment.length);

  // Update the htmlContentState with the modified HTML content
  htmlContentState.setValue(htmlContent);

  // Return a success message
  return "Content updated successfully.";

} else {
  throw new Error("Google Sheets data is not available or insufficient.");
}
