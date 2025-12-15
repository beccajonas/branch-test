// Function to convert a letter to a column index (0-based)
function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

// Ensure the Google Sheets data is available
if (getSheetsData.data && getSheetsData.data.length > 0) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Define the start and end comments for the Device Bookline component
  const deviceBooklineStartComment = '<!--Device Bookline -->';
  const deviceBooklineEndComment = '<!--/ Device Bookline -->';

  // Ensure deviceBooklineObj is an array
  if (!Array.isArray(deviceBooklineObj.value)) {
    throw new Error("deviceBooklineObj is not an array: " + JSON.stringify(deviceBooklineObj.value));
  }

  // Extract the Device Bookline object
  const deviceBooklineArray = deviceBooklineObj.value;

  // Get the column index for the copy column
  const copyColIndex = letterToColumnIndex(copyColumn.value);

  // Dynamically determine the starting row by searching for "Device Bookline" in the first column
  const startingRow = getSheetsData.data.findIndex((row) => {
    const emailCopyLinkDeck = row[Object.keys(row)[0]]; // Access the first column
    return emailCopyLinkDeck && emailCopyLinkDeck.toLowerCase().includes("device bookline");
  });

  // If "Device Bookline" is not found, throw an error
  if (startingRow === -1) {
    throw new Error('Could not find "Device Bookline" in the Google Sheets data.');
  }

  // Locate the Device Bookline component in the HTML
  const deviceBooklineStartIndex = htmlContent.indexOf(deviceBooklineStartComment);
  const deviceBooklineEndIndex = htmlContent.indexOf(deviceBooklineEndComment, deviceBooklineStartIndex);

  if (deviceBooklineStartIndex === -1 || deviceBooklineEndIndex === -1) {
    throw new Error("Could not find Device Bookline comments in the HTML content.");
  }

  // Extract the current Device Bookline HTML
  let deviceBooklineHtml = htmlContent.slice(
    deviceBooklineStartIndex,
    deviceBooklineEndIndex + deviceBooklineEndComment.length
  );

  // Counter to track which "$XXX.XX" placeholder is being replaced
  let pricePlaceholderIndex = 0;

  // Row offset to ensure each "Price" instance starts searching from the next unmatched row
  let rowOffset = startingRow;

  // Counter to track matches for the "Price" keyword
  let priceMatchCount = 0;

  // Flag to track whether all prices are "Was" prices
  let allPricesAreWas = true;

  // Iterate over the deviceBooklineObj array (containing placeholders and keywords)
  deviceBooklineArray.forEach((obj) => {
    let keywordFound = false;
    let validCopyValue = false;

    // Iterate over the getSheetsData.data array, starting from the current rowOffset
    for (let i = rowOffset; i < getSheetsData.data.length; i++) {
      // Access the first column (email copy link deck) and the copy column
      const emailCopyLinkDeck = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]];
      const copyValue = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[copyColIndex]];

      // Check if any of the keywords are present in the emailCopyLinkDeck (case-insensitive)
      if (emailCopyLinkDeck) {
        const keywordMatch = obj.keyword.some((keyword) =>
          emailCopyLinkDeck.toLowerCase().includes(keyword.toLowerCase())
        );

        if (keywordMatch) {
          keywordFound = true;

          // Check if the copy value is valid (not empty or undefined)
          if (copyValue) {
            // Handle the "Price" keyword specifically
            if (obj.keyword.includes("Price")) {
              // Increment the match counter for the "Price" keyword
              priceMatchCount++;

              // Parse the pricing information
              const prices = parsePricing(copyValue);

              // Check if there is a "Now" price
              if (prices.now) {
                allPricesAreWas = false; // If a "Now" price exists, set the flag to false
              }

              // Replace the placeholders in the HTML content
              if (prices.was) {
                // If only one price is found, replace the entire "Was" price structure
                if (!prices.now) {
                  const wasPriceStructure = '${MT_COPY_WAS} <span style="text-decoration: line-through; color: #BF0000;"><span style="color:#000000;">$XXX.XX</span></span>';
                  deviceBooklineHtml = deviceBooklineHtml.replace(wasPriceStructure, prices.was);
                } else {
                  // Replace the "Was" price placeholder normally
                  deviceBooklineHtml = deviceBooklineHtml.replace("$XXX.XX", prices.was);
                }
                pricePlaceholderIndex++;
              }
              if (prices.now) {
                deviceBooklineHtml = deviceBooklineHtml.replace("$XXX.XX", prices.now);
                pricePlaceholderIndex++;
              } else {
                // Replace the entire "Now" price structure with a non-breaking space
                const nowPriceStructure = '${MT_COPY_NOW} $XXX.XX';
                deviceBooklineHtml = deviceBooklineHtml.replace(nowPriceStructure, "&nbsp;");
                pricePlaceholderIndex++;
              }

              validCopyValue = true;

              // Update the rowOffset to start from the next row for the next "Price" instance
              rowOffset = i + 1;

              // Break out of the loop after processing the current match
              break;
            } else {
              // Replace the placeholder with the copy value for non-price keywords
              deviceBooklineHtml = deviceBooklineHtml.replace(obj.placeholder, copyValue);
              validCopyValue = true;

              // Break out of the loop after processing the current match
              break;
            }
          }
        }
      }
    }

    // If no keyword match is found or the copy value is not valid, throw an error
    if (!keywordFound || !validCopyValue) {
      throw new Error(
        `No valid keyword or copy value found for placeholder: ${obj.placeholder}`
      );
    }
  });

  // If all prices are "Was" prices, remove the specified HTML structure
  if (allPricesAreWas) {
    const nowPriceHtmlStructure = `
                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>
                                                <tr>
                                                    <td style="color:#000000;font-family:'Trebuchet MS',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">
                                                        <!-- Update NOW price here   -->
                                                        &nbsp;
                                                    </td>
                                                </tr>`;
    deviceBooklineHtml = deviceBooklineHtml.replace(new RegExp(nowPriceHtmlStructure, "g"), ""); // Remove all instances
  }

  // Replace the original Device Bookline HTML with the updated HTML
  htmlContent =
    htmlContent.slice(0, deviceBooklineStartIndex) +
    deviceBooklineHtml +
    htmlContent.slice(deviceBooklineEndIndex + deviceBooklineEndComment.length);

  // Update the htmlContentState with the modified HTML content
  htmlContentState.setValue(htmlContent);

  // Return a success message
  return "Device Bookline component updated successfully.";
} else {
  throw new Error("Google Sheets data is not available or insufficient.");
}

// Function to parse pricing information
function parsePricing(copyValue) {
  // Normalize the pricing information
  const normalizedValue = copyValue.trim();

  // Extract prices and currency symbols
  const prices = [];
  const regex = /([€£$]?\s*[\d.,]+\s*[€£$]?)/g; // Match prices with optional currency symbols before or after
  let match;

  while ((match = regex.exec(normalizedValue)) !== null) {
    let price = match[1].trim(); // Extract the price and trim spaces

    // Remove any trailing commas
    price = price.replace(/,$/, "");

    // Ensure the match is a valid price (not just a separator like a comma)
    if (/[\d]/.test(price)) {
      prices.push(price);
    }
  }

  // Determine "Was" and "Now" prices
  if (prices.length === 1) {
    return { was: prices[0], now: null }; // Single price is treated as "Was"
  } else if (prices.length >= 2) {
    return { was: prices[0], now: prices[1] }; // First price is "Was", second is "Now"
  }

  return { was: null, now: null }; // Default case
}
