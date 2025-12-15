// Ensure the Google Sheets data is available
if (getSheetsData.data && getSheetsData.data.length > 0) {
  // Get the current HTML content (assuming htmlContentState is a Retool State variable)
  let htmlContent = htmlContentState.value;

  // --- Initialize counters and flags ---
  let regularBooklineCount = 0; // Counts "Bookline" instances, excluding "Device Bookline"
  let ereaderCount = 0;         // Counts "ereader" instances
  let deviceBooklineFound = false; // Flag to indicate if "Device Bookline" has been encountered
  let deviceBooklinePosition = -1; // Stores the count of regular booklines *before* Device Bookline

  // --- Loop through your Google Sheets data ---
  for (let i = 0; i < getSheetsData.data.length; i++) {
    const cellValue = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]]; // Get the first column's value

    if (cellValue && typeof cellValue === 'string') { // Ensure it's a string before using string methods
      const lowerCaseValue = cellValue.toLowerCase();

      // Check for "Device Bookline"
      if (lowerCaseValue.includes('device bookline')) {
        if (!deviceBooklineFound) { // Only set position on the first occurrence
          deviceBooklinePosition = regularBooklineCount; // This is the count of regular booklines *before* this one
          deviceBooklineFound = true;
        }
      }
      // Check for regular "Bookline" (excluding "Device Bookline")
      else if (lowerCaseValue.includes('bookline')) {
        regularBooklineCount++;
      }

      // Check for "ereader" (case-insensitive, whole word)
      if (/\bereader\b/i.test(lowerCaseValue)) {
        ereaderCount++;
      }
    }
  }

  // --- HTML Content Modification (as per your original logic) ---
  // Remove unused Bookline sections (excluding "Device Bookline")
  // Note: This logic assumes you always have a max of 5 booklines in your HTML template
  if (regularBooklineCount < 5) {
    for (let i = regularBooklineCount + 1; i <= 5; i++) {
      const startComment = `<!-- Bookline ${i} -->`;
      const endComment = `<!-- / Bookline ${i} -->`;
      const regex = new RegExp(`${startComment}[\\s\\S]*?${endComment}`, 'g');
      htmlContent = htmlContent.replace(regex, '');
    }
  }

  // Update the htmlContentState with the modified HTML content
  htmlContentState.setValue(htmlContent);

  // --- Return the results ---
  return {
    booklineCount: regularBooklineCount,       // Total count of regular booklines
    ereaderCount: ereaderCount,                // Total count of ereaders
    deviceBooklinePosition: deviceBooklinePosition, // Count of regular booklines before Device Bookline (-1 if not found)
    deviceBooklineFound: deviceBooklineFound   // True if "Device Bookline" was found
  };

} else {
  throw new Error("Google Sheets data is not available or insufficient.");
}
