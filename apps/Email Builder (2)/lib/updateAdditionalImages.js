// Function to extract cdn.kobo.com links from getSheetsData
function extractKoboLinks() {
  return getSheetsData.data
    .map(row => Object.values(row).find(value => value && value.startsWith('https://cdn.kobo.com')))
    .filter(Boolean);
}

// Function to update an image src attribute
function updateImageSrc(html, index, newSrc) {
  const regex = new RegExp(`<img src="https://cdn\\.kobo\\.com/book-images/[^"]*" width="251"[^>]*>`, 'g');
  let count = 0;
  return html.replace(regex, (match) => {
    if (count === index) {
      return match.replace(/src="[^"]*"/, `src="${newSrc}"`);
    }
    count++;
    return match;
  });
}

// Main function to update additional images
function updateAdditionalImages() {
  // Only proceed if heroSelect.value is hero_dual_was_now.value
  if (heroSelect.value !== hero_dual_was_now.value) {
    return "No updates needed for this hero type.";
  }

  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Extract Kobo links
  const koboLinks = extractKoboLinks();

  // Update image tags if links are available
  if (koboLinks.length > 0) {
    htmlContent = updateImageSrc(htmlContent, 0, koboLinks[0]);
  }
  if (koboLinks.length > 1) {
    htmlContent = updateImageSrc(htmlContent, 1, koboLinks[1]);
  }

  // Update the HTML content state
  htmlContentState.setValue(htmlContent);

  return `Updated ${koboLinks.length} additional image(s).`;
}

// Run the function and return the result
return updateAdditionalImages();
