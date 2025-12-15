// updateFeatureBackgroundColour1 query

let htmlContent = htmlContentState.value;

// New background color comes from featureBackgroundColourSelect1
const newBackgroundColor = featureBackgroundColourSelect1.value || '#F2CBCC'; // Default to #F2CBCC

// --- Define the enclosing comments for the limited search scope ---
const enclosingStartComment = '<!-- FEATURE 1 -->';
const enclosingEndComment = '<!-- /FEATURE 1 -->';
// --------------------------------------------------------------------

// 1. First, find the entire enclosing block (e.g., <!-- FEATURE 1 -->)
const enclosingBlockRegex = new RegExp(`(${enclosingStartComment}[\\s\\S]*?${enclosingEndComment})`, 's');
const enclosingMatch = htmlContent.match(enclosingBlockRegex);

if (enclosingMatch) {
  let fullEnclosingBlockContent = enclosingMatch[1]; // The entire matched enclosing block

  // 2. Now, find the 'Content' block *within* this enclosing block content
  const contentBlockRegex = /(<!--\s*Content\s*-->[\s\S]*?<!--\s*\/Content\s*-->)/s;
  const contentMatch = fullEnclosingBlockContent.match(contentBlockRegex);

  if (contentMatch) {
    let contentBlockContent = contentMatch[1]; // The entire matched Content block

    let updatedContentBlockContent = contentBlockContent; // Initialize with current content

    // --- Replacement 1: First background-color after <!-- Content --> ---
    // This regex looks for 'background-color: #XXXXXX;' after '<!-- Content -->'
    // It finds and captures the first instance.
    const firstBgAfterContentRegex = /(<!--\s*Content\s*-->[\s\S]*?background-color:\s*)#[0-9A-Fa-f]{6}(;)/s;
    const bg1Match = updatedContentBlockContent.match(firstBgAfterContentRegex);

    if (bg1Match) {
      updatedContentBlockContent = updatedContentBlockContent.replace(
        firstBgAfterContentRegex,
        `${bg1Match[1]}${newBackgroundColor}${bg1Match[2]}`
      );
      //  console.log("Replaced first background-color after <!-- Content -->.");
    } else {
      console.log("No first background-color found after <!-- Content -->.");
    }

    // --- Replacement 2: First background-color after <!-- /CTA --> ---
    // This regex looks for 'background-color: #XXXXXX;' after '<!-- /CTA -->'
    // It finds and captures the first instance.
    // Important: It operates on the *already updated* content from the first replacement.
    const firstBgAfterCtaRegex = /(<!--\s*\/CTA\s*-->[\s\S]*?background-color:\s*)#[0-9A-Fa-f]{6}(;)/s;
    const bg2Match = updatedContentBlockContent.match(firstBgAfterCtaRegex);

    if (bg2Match) {
      updatedContentBlockContent = updatedContentBlockContent.replace(
        firstBgAfterCtaRegex,
        `${bg2Match[1]}${newBackgroundColor}${bg2Match[2]}`
      );
      //  console.log("Replaced first background-color after <!-- /CTA -->.");
    } else {
      console.log("No first background-color found after <!-- /CTA -->.");
    }

    // 3. Replace the original Content block in the *enclosing block content* with the updated one
    const updatedFullEnclosingBlockContent = fullEnclosingBlockContent.replace(contentMatch[0], updatedContentBlockContent);

    // 4. Replace the original enclosing block in the *full HTML* with the updated one
    htmlContent = htmlContent.replace(enclosingMatch[0], updatedFullEnclosingBlockContent);

    // Update the htmlContentState with the modified HTML
    htmlContentState.setValue(htmlContent);

    return "Two background colors updated: after <!-- Content --> and after <!-- /CTA -->.";

  } else {
    console.log(`'Content' block not found within the '${enclosingStartComment}' block.`);
  }

} else {
  throw new Error(`Enclosing comment block starting with '${enclosingStartComment}' not found in HTML content.`);
}

return "No relevant color changes made."; // Fallback message if no match
