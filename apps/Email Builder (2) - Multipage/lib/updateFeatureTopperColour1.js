// updateFeatureTopperColour1 query

let htmlContent = htmlContentState.value;

const newBackgroundColor = featureTopperColourSelect1.value; // No default here, as 'None' is a valid input

// --- NEW: Define the enclosing comments for the limited search scope ---

const enclosingStartComment = '<!-- FEATURE 1 -->';

const enclosingEndComment = '<!-- /FEATURE 1 -->';

// --------------------------------------------------------------------

// 1. First, find the entire enclosing block

const enclosingBlockRegex = new RegExp(`(${enclosingStartComment}[\\s\\S]*?${enclosingEndComment})`, 's');

const enclosingMatch = htmlContent.match(enclosingBlockRegex);

if (enclosingMatch) {

  let fullEnclosingBlockContent = enclosingMatch[1]; // The entire matched enclosing block

  // 2. Now, search for the 'Topper' block *within* this enclosing block content
  const fullTopperBlockRegex = /(<!--\s*Topper\s*-->[\s\S]*?<!--\s*\/Topper\s*-->)/s;
  const topperMatch = fullEnclosingBlockContent.match(fullTopperBlockRegex);

  if (topperMatch) {
    let updatedFullEnclosingBlockContent; // Declare outside conditional for scope

    // --- NEW LOGIC START ---
    if (newBackgroundColor && newBackgroundColor.toLowerCase() === 'none') {
      // If 'None' is selected, remove the entire topper block
      updatedFullEnclosingBlockContent = fullEnclosingBlockContent.replace(topperMatch[0], '');
      console.log(`'Topper' block removed from within '${enclosingStartComment}' block.`);
    } else {
      // Proceed with color changes if a color is selected (or default)
      let topperBlockContent = topperMatch[1]; // The entire matched topper block (including comments)

      // Use the default color if newBackgroundColor is null/undefined/empty string
      const effectiveBackgroundColor = newBackgroundColor || '#BF0000';

      // --- Step 1: Update Background Color (within topperBlockContent) ---
      const backgroundColorRegex = /(background-color:\s*)#[0-9A-Fa-f]{6}(;)/g;
      let updatedTopperBlockContent = topperBlockContent.replace(backgroundColorRegex, `$1${effectiveBackgroundColor}$2`);

      // --- Step 2: Conditional Text Color Change (within updatedTopperBlockContent) ---
      if (effectiveBackgroundColor.toLowerCase() === '#eeb711') {
        const textColorWhiteRegex = /(color:\s*)#ffffff(;)/g;
        updatedTopperBlockContent = updatedTopperBlockContent.replace(textColorWhiteRegex, `$1#000000$2`);
      }

      // 3. Replace the original topper block in the *enclosing block content* with the updated one
      updatedFullEnclosingBlockContent = fullEnclosingBlockContent.replace(topperMatch[0], updatedTopperBlockContent);
    }
    // --- NEW LOGIC END ---

    // 4. Replace the original enclosing block in the *full HTML* with the updated one
    htmlContent = htmlContent.replace(enclosingMatch[0], updatedFullEnclosingBlockContent);

    // Update the htmlContentState with the modified HTML
    htmlContentState.setValue(htmlContent);

    if (newBackgroundColor && newBackgroundColor.toLowerCase() === 'none') {
        return "Feature Topper block removed from the specified enclosing block.";
    } else {
        return "Feature Topper background and potentially text colors updated within the specified enclosing block.";
    }

  } else {
    console.log(`'Topper' block not found within the '${enclosingStartComment}' block.`);
    // If topper block isn't found, and 'None' was selected, there's nothing to remove.
    // If a color was selected, there's nothing to update.
    return "No relevant changes made as 'Topper' block was not found.";
  }

} else {
  throw new Error(`Enclosing comment block starting with '${enclosingStartComment}' not found in HTML content.`);
}

return "No relevant color changes made."; // Fallback message if no match
