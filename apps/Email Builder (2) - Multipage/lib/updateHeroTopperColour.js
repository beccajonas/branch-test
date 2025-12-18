// Get the current HTML content from htmlContentState
let htmlContent = htmlContentState.value;

// Ensure heroTopperColourSelect.value is available and valid for use as a color
// This assumes heroTopperColourSelect.value will be a valid CSS color string (e.g., '#RRGGBB' or 'red')
const newBackgroundColor = heroTopperColourSelect.value || '#BF0000'; // Fallback to default red

// Regex to find the entire "Topper" block and capture its content
// The 's' flag makes '.' match newlines
const fullTopperBlockRegex = /(<!--\s*(?:Text\s*)?Topper\s*-->[\s\S]*?<!--\s*\/(?:Text\s*)?Topper\s*-->)/s;

const match = htmlContent.match(fullTopperBlockRegex);

if (match) {
  let topperBlockContent = match[1]; // The entire matched topper block (including comments)

  // --- Step 1: Update Background Color ---
  // Regex to find all background-color properties *within* the captured topperBlockContent
  // It specifically looks for 'background-color:' followed by a hex color code.
  const backgroundColorRegex = /(background-color:\s*)#[0-9A-Fa-f]{6}(;)/g;

  // Perform the background color replacement on the extracted topper block content
  // $1 refers to the first captured group (background-color: )
  // $2 refers to the second captured group (;)
  let updatedTopperBlockContent = topperBlockContent.replace(backgroundColorRegex, `$1${newBackgroundColor}$2`);

  // --- Step 2: Conditional Text Color Change ---
  // If the new background color is #EEB711, change text color from #ffffff to #000000
  if (newBackgroundColor.toLowerCase() === '#eeb711') { // Use toLowerCase() for case-insensitive comparison
    // Regex to find color:#ffffff; instances
    // We'll capture the 'color:' part and the ';' to preserve structure
    const textColorWhiteRegex = /(color:\s*)#ffffff(;)/g;

    // Replace color:#ffffff; with color:#000000;
    updatedTopperBlockContent = updatedTopperBlockContent.replace(textColorWhiteRegex, `$1#000000$2`);
  }

  // Replace the original topper block in the full HTML with the updated one
  htmlContent = htmlContent.replace(fullTopperBlockRegex, updatedTopperBlockContent);

  // Update the htmlContentState with the modified HTML
  htmlContentState.setValue(htmlContent);

}

// Return a message indicating completion (optional, but good for debugging in Retool)
return "Topper background and potentially text colors updated.";
