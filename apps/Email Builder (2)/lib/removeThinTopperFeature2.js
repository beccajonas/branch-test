// removeThinTopperFeature1 query

// Helper function to convert a letter to a column index (0-based)
function letterToColumnIndex(letter) {
  if (!letter || typeof letter !== 'string' || letter.length !== 1) {
    throw new Error("Invalid column letter provided to letterToColumnIndex.");
  }
  return letter.toUpperCase().charCodeAt(0) - 65;
}

// Get the current HTML content
let htmlContent = htmlContentState.value;

// Define the enclosing comments for the limited search scope
const enclosingStartComment = '<!-- FEATURE 2 -->';
const enclosingEndComment = '<!-- /FEATURE 2 -->';

// --- CRITICALLY REVISED thinTopperRegex ---
// This regex now matches "Thin Topper" with correct casing and handles potential extra spaces
const thinTopperRegex = /<!--\s*Thin Topper\s*-\s*Delete if not needed\s*-->[\s\S]*?<!--\s*\/Thin Topper\s*-->/s;
// You could also add the 'i' flag for case-insensitive matching if you want to be even more flexible:
// const thinTopperRegex = /<!--\s*Thin Topper\s*-\s*Delete if not needed\s*-->[\s\S]*?<!--\s*\/Thin Topper\s*-->/si;
// For this specific case, matching the exact casing is probably better if you're sure of it.
// I've kept it case-sensitive to match your exact provided comments.
// --- END REVISED thinTopperRegex ---


// 1. First, find the entire enclosing block
const enclosingBlockRegex = new RegExp(`(${enclosingStartComment}[\\s\\S]*?${enclosingEndComment})`, 's');
const enclosingMatch = htmlContent.match(enclosingBlockRegex);

if (enclosingMatch) {
  let fullEnclosingBlockContent = enclosingMatch[1]; // The entire matched enclosing block
  let updatedFullEnclosingBlockContent = fullEnclosingBlockContent; // Initialize with current content

  // Get the row number from startRow1.value (e.g., 2 for the second row in the sheet)
  const sheetRowNumber = parseInt(startRow2.value, 10);

  // Check if sheetRowNumber is a valid number
  if (isNaN(sheetRowNumber) || sheetRowNumber < 1) {
    console.warn("Invalid startRow1.value provided. Cannot determine target row in sheet.");
    // If we can't find a valid row, we'll assume no Topper content, thus remove the thin topper
    updatedFullEnclosingBlockContent = updatedFullEnclosingBlockContent.replace(thinTopperRegex, '');
    htmlContent = htmlContent.replace(enclosingMatch[0], updatedFullEnclosingBlockContent);
    htmlContentState.setValue(htmlContent);
    return "Invalid row number. Thin topper removed by default from Feature 1 block.";
  }

  // Get the column index from copyColumn.value (e.g., 'C' -> 2)
  const dynamicCopyColIndex = letterToColumnIndex(copyColumn.value);

  // Adjust for 0-based array index (if sheetRowNumber is 1-based)
  const targetRowIndex = sheetRowNumber - 1;

  // Retrieve the specific row from getSheetsData.data
  const targetRow = getSheetsData.data && getSheetsData.data[targetRowIndex];

  if (targetRow) {
    const topperValue = targetRow[Object.keys(targetRow)[dynamicCopyColIndex]];

    if (topperValue && String(topperValue).trim() !== '') {
      updatedFullEnclosingBlockContent = updatedFullEnclosingBlockContent.replace(thinTopperRegex, '');
      console.log("Thin topper removed from Feature 2 block because topper content was found.");
    } else {
      console.log("Thin topper kept in Feature 2 block because topper content was empty or not found.");
    }
  } else {
    updatedFullEnclosingBlockContent = updatedFullEnclosingBlockContent.replace(thinTopperRegex, '');
    console.log("Thin topper removed from Feature 2 block because no corresponding sheet row was found.");
  }

  // 4. Replace the original enclosing block in the *full HTML* with the updated one
  htmlContent = htmlContent.replace(enclosingMatch[0], updatedFullEnclosingBlockContent);

  // Update the htmlContentState with the modified HTML
  htmlContentState.setValue(htmlContent);

  return "Thin topper check and removal completed for Feature 2 block.";

} else {
  throw new Error(`Enclosing comment block starting with '${enclosingStartComment}' not found in HTML content.`);
}

return "No relevant changes made to Feature 2 block."; // Fallback message if no match
