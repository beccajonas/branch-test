// Function to convert a letter to a column index (0-based)
function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

// Ensure the Google Sheets data is available
if (getSheetsData.data && getSheetsData.data.length > 0) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Get the column index for the copy column
  const copyColIndex = letterToColumnIndex(copyColumn.value);

  // Create an array to store legal sections
  const legalSections = [];

  // Variable to store disclaimer copy if found
  let disclaimerCopy = '';

  // First pass: collect all non-empty legal headers, copies, and disclaimer
  for (let i = 0; i < getSheetsData.data.length; i++) {
    const emailCopyLinkDeck = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[0]];
    let copyValue = getSheetsData.data[i][Object.keys(getSheetsData.data[i])[copyColIndex]];

    if (emailCopyLinkDeck && copyValue && copyValue.trim() !== '') {
      const legalHeaderMatch = emailCopyLinkDeck.match(/^legal header (\d+)$/i);
      const legalCopyMatch = emailCopyLinkDeck.match(/^legal copy (\d+)/i);
      const legalDisclaimerMatch = emailCopyLinkDeck.match(/^disclaimers \(audio, waterproof, etc\)$/i);

      if (legalHeaderMatch || legalCopyMatch) {
        const originalIndex = parseInt(legalHeaderMatch ? legalHeaderMatch[1] : legalCopyMatch[1], 10);
        if (!legalSections[legalSections.length - 1] || legalSections[legalSections.length - 1].originalIndex !== originalIndex) {
          legalSections.push({ originalIndex, header: '', copy: '' });
        }
        if (legalHeaderMatch) {
          legalSections[legalSections.length - 1].header = copyValue;
        } else {
          legalSections[legalSections.length - 1].copy = copyValue;
        }
      } else if (legalDisclaimerMatch) {
        disclaimerCopy = copyValue;
      }
    }
  }

  // Initialize a counter for the links
  let linkCounter = 1;

  // Second pass: replace content in HTML
  legalSections.forEach((section, index) => {
    const newIndex = index + 1; // Start from 1

    // Format text surrounded by forward slashes as links
    if (section.header) {
      section.header = section.header.replace(/\/([^\/]+)\//g, (match, p1) => {
        const linkNumber = linkCounter++;
        return `<a href="\${clickthrough('LEGAL${linkNumber}_LINK','MT_COPY_UTMSOURCE='+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">${p1}</a>`;
      });
    }
    if (section.copy) {
      section.copy = section.copy.replace(/\/([^\/]+)\//g, (match, p1) => {
        const linkNumber = linkCounter++;
        return `<a href="\${clickthrough('LEGAL${linkNumber}_LINK','MT_COPY_UTMSOURCE='+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">${p1}</a>`;
      });
    }

    const startTag = `<!-- LEGAL ${newIndex} - DELETE IF NOT NEEDED -->`;
    const endTag = `<!-- / LEGAL ${newIndex} -->`;
    const startIndex = htmlContent.indexOf(startTag);
    const endIndex = htmlContent.indexOf(endTag, startIndex);

    if (startIndex !== -1 && endIndex !== -1) {
      let newSectionContent = `
<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">
                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>
                  </table>
                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>
                      <td width="486" style="color:#444444;font-family:'Trebuchet MS',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">
                        <b>${section.header}:</b> <br />${section.copy}
                      </td>
                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>
                    </tr>
                  </table>
`;
      htmlContent = htmlContent.slice(0, startIndex) + startTag + newSectionContent + endTag + htmlContent.slice(endIndex + endTag.length);
    }
  });

  // Remove unused legal sections and additional code
  if (legalSections.length === 0 && !disclaimerCopy) {
    // If no legal sections AND no disclaimer, remove everything from the start of legal sections to the end
    const startComment = `<!-- Legal Section  -->`; // As per previous discussions
    const endComment = `<!-- /Legal section  -->`; // As per previous discussions

    const startIndex = htmlContent.indexOf(startComment);
    const endIndex = htmlContent.indexOf(endComment, startIndex);

    if (startIndex !== -1 && endIndex !== -1) {
      htmlContent = htmlContent.slice(0, startIndex) + htmlContent.slice(endIndex + endComment.length);
    }
  } else if (legalSections.length < 8) {
    // If some legal sections, but fewer than 8, remove unused sections
    const startComment = `<!-- LEGAL ${legalSections.length + 1} - DELETE IF NOT NEEDED -->`;
    const endComment = `<!-- / LEGAL 8 -->`; // This was the original end comment in your provided base code
    const startIndex = htmlContent.indexOf(startComment);
    const endIndex = htmlContent.indexOf(endComment, startIndex);

    if (startIndex !== -1 && endIndex !== -1) {
      htmlContent = htmlContent.slice(0, startIndex) + htmlContent.slice(endIndex + endComment.length);
    }
  }

  // Insert disclaimer section if found, wrapped in LEGAL 0 comments
  if (disclaimerCopy) {

    // --- ADD THIS LINE HERE ---
    // Apply superscript formatting to the disclaimerCopy
    //  disclaimerCopy = disclaimerCopy.replace(/(\*\*|[*†‡])/g, '<sup>$1</sup>');
    // --- END ADDITION ---
    
    const disclaimerHtml = `
<!-- LEGAL 0 - DELETE IF NOT NEEDED -->
<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">
                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>
                  </table>
                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>
                      <td width="486" style="color:#444444;font-family:'Trebuchet MS',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">
<em>${disclaimerCopy}</em>
</td>
                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>
                    </tr>
                  </table>
<!-- / LEGAL 0 -->
`;
    // NEW TARGET: Insert before the first legal section placeholder
    const targetComment = '<!-- LEGAL 1 - DELETE IF NOT NEEDED -->';
    const targetIndex = htmlContent.indexOf(targetComment);

    if (targetIndex !== -1) {
      // Insert BEFORE the targetComment
      htmlContent =
        htmlContent.slice(0, targetIndex) + // HTML before the target
        disclaimerHtml +                    // The disclaimer HTML
        '\n\n' +                            // Optional newlines for formatting
        htmlContent.slice(targetIndex);     // HTML from the target onwards
    } else {
        // Fallback: If LEGAL 1 isn't found (e.g., if it was already removed by cleanup),
        // the disclaimer won't be inserted here. You might want to add a console.log.
        console.log("Target comment for disclaimer insertion ('<!-- LEGAL 1 - DELETE IF NOT NEEDED -->') not found. Disclaimer not inserted at this location.");
    }
  }

  // Update the htmlContentState with the modified HTML content
  htmlContentState.setValue(htmlContent);

} else {
  throw new Error("Google Sheets data is not available or insufficient.");
}
