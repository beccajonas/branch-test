// Ensure the Google Sheets data is available
if (getSheetsData.data && getSheetsData.data.length > 0) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Count the number of "Bookline" instances (excluding "Device Bookline")
  let booklineCount = 0;
  // Count the number of "ereader" instances (case-insensitive)
  let ereaderCount = 0;

  let deviceYes = false;
  let devicePlace = 0;

  for (let i = 0; i < getSheetsData.data.length; i++) {
    const emailCopyLinkDeck = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]];

    if (
      emailCopyLinkDeck &&
      emailCopyLinkDeck.toLowerCase().includes('bookline') &&
      !emailCopyLinkDeck.toLowerCase().includes('device bookline')
    ) {
      booklineCount++;
      devicePlace++;
    } else if (emailCopyLinkDeck.toLowerCase().includes('device bookline')) {
      //  booklineCount--;
      devicePlace = booklineCount;
      deviceYes = true;
    }

    // Only count "ereader" (not "ereaders")
    if (
      emailCopyLinkDeck &&
      /\bereader\b/i.test(emailCopyLinkDeck)
    ) {
      ereaderCount++;
    }
  }

  // Remove unused Bookline sections (excluding "Device Bookline")
  if (booklineCount < 5) {
    for (let i = booklineCount + 1; i <= 5; i++) {
      const startComment = `<!-- Bookline ${i} -->`;
      const endComment = `<!-- / Bookline ${i} -->`;

      // Use a flexible regex to match and remove the bookline section
      const regex = new RegExp(`${startComment}[\\s\\S]*?${endComment}`, 'g');
      htmlContent = htmlContent.replace(regex, '');
    }
  }

  // Update the htmlContentState with the modified HTML content
  htmlContentState.setValue(htmlContent);

  // Return the booklineCount and ereaderCount
  return {
    booklineCount: booklineCount,
    ereaderCount: ereaderCount,
    belowBookline: devicePlace,
    deviceYes
  };
} else {
  throw new Error("Google Sheets data is not available or insufficient.");
}
