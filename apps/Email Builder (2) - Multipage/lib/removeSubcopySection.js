// Check for Subcopy keyword in newObj
const subcopyKeyword = heroDefaultObj.value.find(obj => obj.keyword.includes('Subcopy'));

if (subcopyKeyword) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Find the corresponding row in getSheetsData
  const subcopyRow = getSheetsData.data.find(row => {
    const firstColumnValue = row[Object.keys(row)[0]];
    return firstColumnValue && firstColumnValue.replace(/^"|"$/g, '').trim().startsWith('Subcopy');
  });

  if (subcopyRow) {
    // Get the copy value (assuming it's in the third column, index 2)
    const subcopyValue = subcopyRow[Object.keys(subcopyRow)[2]];

    if (!(subcopyValue && subcopyValue.trim() !== '')) {
      // Define the regex to match the Subcopy section
      const subcopyRegex = /<tr>\s*<td colspan="3" height="16"[^>]*>&nbsp;<\/td>\s*<\/tr>\s*<tr>\s*<td[^>]*>&nbsp;<\/td>\s*<td[^>]*>[\s\S]*?SUBCOPY - Lorem ipsum[\s\S]*?<!-- \/PROMOCODE -->\s*<\/td>\s*<td[^>]*>&nbsp;<\/td>\s*<\/tr>/;
      
      // Remove the Subcopy section
      htmlContent = htmlContent.replace(subcopyRegex, '');
      
      // Update the htmlContentState with the modified HTML content
      htmlContentState.setValue(htmlContent);
    }
  } else {
    // Use the same regex and removal logic as above
    const subcopyRegex = /<tr>\s*<td colspan="3" height="16"[^>]*>&nbsp;<\/td>\s*<\/tr>\s*<tr>\s*<td[^>]*>&nbsp;<\/td>\s*<td[^>]*>[\s\S]*?SUBCOPY - Lorem ipsum[\s\S]*?<!-- \/PROMOCODE -->\s*<\/td>\s*<td[^>]*>&nbsp;<\/td>\s*<\/tr>/;
    
    htmlContent = htmlContent.replace(subcopyRegex, '');
    
    htmlContentState.setValue(htmlContent);
  }
} else {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;
  
  // Use the same regex and removal logic as above
  const subcopyRegex = /<tr>\s*<td colspan="3" height="16"[^>]*>&nbsp;<\/td>\s*<\/tr>\s*<tr>\s*<td[^>]*>&nbsp;<\/td>\s*<td[^>]*>[\s\S]*?SUBCOPY - Lorem ipsum[\s\S]*?<!-- \/PROMOCODE -->\s*<\/td>\s*<td[^>]*>&nbsp;<\/td>\s*<\/tr>/;
  
  htmlContent = htmlContent.replace(subcopyRegex, '');
  
  htmlContentState.setValue(htmlContent);
}

return "Subcopy section check and removal completed.";
