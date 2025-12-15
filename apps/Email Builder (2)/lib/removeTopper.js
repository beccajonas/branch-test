// Function to convert a letter to a column index (0-based)
function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

// Check for Subcopy keyword in newObj
const topperKeyword = heroDefaultObj.value.find(obj => obj.keyword.includes('Topper'));

if (topperKeyword) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // --- START MODIFICATION ---
  // Get the column index from copyColumn.value (e.g., 'C' -> 2)
  const dynamicCopyColIndex = letterToColumnIndex(copyColumn.value);
  // --- END MODIFICATION ---

  // Find the corresponding row in getSheetsData
  const topperRow = getSheetsData.data.find(row => {
    const firstColumnValue = row[Object.keys(row)[0]];
    return firstColumnValue && firstColumnValue.replace(/^"|"$/g, '').trim().startsWith('Topper');
  });

  // Define the regex to match the "Thin topper" section
  // This regex is more robust to handle potential whitespace/newline variations
  const thinTopperRegex = /<!--\s*Thin topper\s*-\s*Delete if not needed\s*-->\s*<tr>\s*<td height="24" style="background-color:\s*#[0-9A-Fa-f]{6};font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;<\/td>\s*<\/tr>\s*<!--\s*\/Thin topper\s*-->/s; // 's' flag for dotAll

  if (topperRow) {
    // Get the topperValue using the dynamically calculated index
    const topperValue = topperRow[Object.keys(topperRow)[dynamicCopyColIndex]]; // MODIFIED LINE

    // NEW LOGIC: If topperValue is NOT empty or whitespace, remove the "Thin topper" section
    if (topperValue && topperValue.trim() !== '') {
      htmlContent = htmlContent.replace(thinTopperRegex, '');
      htmlContentState.setValue(htmlContent);
    }
    // ELSE (topperValue is empty/whitespace): do nothing, keep the "Thin topper" section
  } else {
    // If no topperRow is found, remove the "Thin topper" section
    // This aligns with the previous behavior where the subcopy was removed if no row was found.
    htmlContent = htmlContent.replace(thinTopperRegex, '');
    htmlContentState.setValue(htmlContent);
  }
}

return "Topper section check and removal completed.";
