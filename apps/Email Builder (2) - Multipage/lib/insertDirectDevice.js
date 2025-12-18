let htmlContent = htmlContentState.value;
const deviceCardValue = deviceContentCardListReskin.value;
const deviceCountValue = deviceCount.value;
const commentToFind = `<!-- /Hero -->`;
const commentPosition = htmlContent.indexOf(commentToFind);

if (commentPosition !== -1) {
  // Build the repeated device cards with numbered comments and updated DEVICE#_LINK
  const repeatedDeviceCards = Array.from({ length: deviceCountValue }, (_, i) => {
    // Numbered comments
    let numberedCard = deviceCardValue
      .replace(/<!-- Device Content Card -->/g, `<!-- Device Content Card ${i + 1} -->`)
      .replace(/<!-- \/Device Content Card -->/g, `<!-- /Device Content Card ${i + 1} -->`);
    
    // Update DEVICE1_LINK for cards after the first
    if (i > 0) {
      const linkPattern = /DEVICE1_LINK/g;
      numberedCard = numberedCard.replace(linkPattern, `DEVICE${i + 1}_LINK`);
    }
    return numberedCard;
  }).join('\n\n');

  const newHtmlContent =
    htmlContent.slice(0, commentPosition + commentToFind.length) +
    '\n\n' +
    repeatedDeviceCards +
    '\n' +
    htmlContent.slice(commentPosition + commentToFind.length);

  htmlContentState.setValue(newHtmlContent);
} else {
  console.error('Marker not found in HTML content.');
}
