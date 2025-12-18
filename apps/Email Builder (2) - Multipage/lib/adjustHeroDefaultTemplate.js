// Get the current HTML content
let htmlContent = htmlContentState.value;

// Check for Headline
const headlineKeyword = heroDefaultObj.value.find(obj => obj.keyword.includes('Headline'));

if (headlineKeyword) {
  // Check if the placeholder still exists in the HTML content
  if (htmlContent.includes(headlineKeyword.placeholder)) {
    // Remove headline section
    const headlineRegex = /<tr>\s*<td[^>]*>&nbsp;<\/td>\s*<td[^>]*>HEADLINE<\/td>\s*<td[^>]*>&nbsp;<\/td>\s*<\/tr>\s*<tr>\s*<td[^>]*colspan="3"[^>]*>&nbsp;<\/td>\s*<\/tr>/;
    htmlContent = htmlContent.replace(headlineRegex, '');
  }
}

// Update the htmlContentState with the modified HTML content
htmlContentState.setValue(htmlContent);

return "Hero Default template adjustments completed.";
