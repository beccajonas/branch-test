function preprocessHtmlContent() {
  if (!extractPrices.data) {
    return;
  }

  let htmlContent = htmlContentState.value;

  // --- REGEXES FOR INDIVIDUAL SAVE PRICE BLOCKS ---
  const ebookSaveBlockToRemoveRegex = new RegExp(
    `<tr>\\s*<td height="10"[^>]*>&nbsp;<\\/td>\\s*<\\/tr>\\s*` +
    `<tr>\\s*<td width="251"[^>]*>\\s*` +
    `<!-- FIRST BOOK SAVE PRICE BELOW -->\\s*` +
    `\\$\\{MT_COPY_SAVE\\}\\s*\\$X\\.XX\\s*<\\/td>\\s*<\\/tr>`
  );

  const audiobookSaveBlockToRemoveRegex = new RegExp(
    `<tr>\\s*<td height="10"[^>]*>&nbsp;<\\/td>\\s*<\\/tr>\\s*` +
    `<tr>\\s*<td width="251"[^>]*>\\s*` +
    `<!-- SECOND BOOK SAVE PRICE BELOW -->\\s*` +
    `\\$\\{MT_COPY_SAVE\\}\\s*\\$X\\.XX\\s*<\\/td>\\s*<\\/tr>`
  );

  // --- REGEXES FOR INDIVIDUAL WAS PRICE BLOCKS ---
  const ebookWasBlockToRemoveRegex = new RegExp(
    `<tr>\\s*<td height="10"[^>]*>&nbsp;<\\/td>\\s*<\\/tr>\\s*` +
    `<tr>\\s*<td width="251"[^>]*>\\s*` +
    `\\$\\{MT_COPY_WAS\\}\\s*` +
    `<!-- FIRST BOOK WAS PRICING IN BETWEEN SPAN TAGS TO APPLY RED STRIKETHROUGH  -->\\s*` +
    `<span style="text-decoration:line-through;color:#000000;text-decoration-color:#BF0000;">\\$X\\.xx<\\/span>\\s*<\\/td>\\s*<\\/tr>`
  );

  const audiobookWasBlockToRemoveRegex = new RegExp(
    `<tr>\\s*<td height="10"[^>]*>&nbsp;<\\/td>\\s*<\\/tr>\\s*` +
    `<tr>\\s*<td width="251"[^>]*>\\s*` +
    `\\$\\{MT_COPY_WAS\\}\\s*` +
    `<!-- SECOND BOOK WAS PRICING IN BETWEEN SPAN TAGS TO APPLY RED STRIKETHROUGH  -->\\s*` +
    `<span style="text-decoration:line-through;color:#000000;text-decoration-color:#BF0000;">\\$X\\.xx<\\/span>\\s*<\\/td>\\s*<\\/tr>`
  );

  // --- REGEXES FOR ENTIRE WAS/SAVE TABLE BLOCKS ---
  const ebookFullWasSaveTableRegex = new RegExp(
    `<!-- WAS\\/SAVE PRICING DELETE IF NOT NEEDED -->\\s*` +
    `<table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">[\\s\\S]*?` +
    `<!-- FIRST BOOK WAS PRICING IN BETWEEN SPAN TAGS TO APPLY RED STRIKETHROUGH  -->[\\s\\S]*?` + // Ensure it's the first book's block
    `<!-- \\/ WAS\\/SAVE PRICING -->`
  );

  const audiobookFullWasSaveTableRegex = new RegExp(
    `<!-- WAS\\/SAVE PRICING DELETE IF NOT NEEDED -->\\s*` +
    `<table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">[\\s\\S]*?` +
    `<!-- SECOND BOOK WAS PRICING IN BETWEEN SPAN TAGS TO APPLY RED STRIKETHROUGH  -->[\\s\\S]*?` + // Ensure it's the second book's block
    `<!-- \\/ WAS\\/SAVE PRICING -->`
  );


  // --- Helper to replace a block with &nbsp; ---
  // This helper will replace the entire matched HTML block with just a simple <td>&nbsp;</td>
  // This is a common way to visually "remove" a line in email HTML without affecting table structure.
  const replaceBlockWithNbsp = (currentHtml, regex) => {
    // We replace the entire matched block with a minimal <td> tag containing &nbsp;
    // This maintains table structure while effectively clearing the content.
    // Adjust this if you want to remove the <tr> entirely.
    return currentHtml.replace(regex, '<tr><td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr><tr><td width="251">&nbsp;</td></tr>');
  };


  // Ebook replacements and conditional removal
  if (extractPrices.data.ebook) {
    if (extractPrices.data.ebook.now) {
      htmlContent = htmlContent.replace("$X.XX", extractPrices.data.ebook.now);
    }

    // --- Handle Ebook Was Price Section ---
    if (extractPrices.data.ebook.was) {
      htmlContent = htmlContent.replace("$X.xx", extractPrices.data.ebook.was);
    } else {
      // If no Ebook was price, replace its line with &nbsp;
      htmlContent = replaceBlockWithNbsp(htmlContent, ebookWasBlockToRemoveRegex);
    }

    // --- Handle Ebook Save Price Section ---
    if (extractPrices.data.ebook.save) {
      htmlContent = htmlContent.replace("$X.XX", extractPrices.data.ebook.save);
    } else {
      // If no Ebook save price, replace its line with &nbsp;
      htmlContent = replaceBlockWithNbsp(htmlContent, ebookSaveBlockToRemoveRegex);
    }

    // --- Handle Full Ebook Was/Save Table Removal ---
    // This condition should be checked *after* individual replacements.
    // If both are missing, then the entire table block should be removed.
    if (!extractPrices.data.ebook.was && !extractPrices.data.ebook.save) {
        htmlContent = htmlContent.replace(ebookFullWasSaveTableRegex, '');
    }
  }

  // Audiobook replacements and conditional removal
  if (extractPrices.data.audiobook) {
    if (extractPrices.data.audiobook.now) {
      htmlContent = htmlContent.replace("FREE or $X.XX", extractPrices.data.audiobook.now);
    }

    // --- Handle Audiobook Was Price Section ---
    if (extractPrices.data.audiobook.was) {
      htmlContent = htmlContent.replace("$X.xx", extractPrices.data.audiobook.was);
    } else {
      // If no Audiobook was price, replace its line with &nbsp;
      htmlContent = replaceBlockWithNbsp(htmlContent, audiobookWasBlockToRemoveRegex);
    }

    // --- Handle Audiobook Save Price Section ---
    if (extractPrices.data.audiobook.save) {
      htmlContent = htmlContent.replace("$X.XX", extractPrices.data.audiobook.save);
    } else {
      // If no Audiobook save price, replace its line with &nbsp;
      htmlContent = replaceBlockWithNbsp(htmlContent, audiobookSaveBlockToRemoveRegex);
    }

    // --- Handle Full Audiobook Was/Save Table Removal ---
    // This condition should be checked *after* individual replacements.
    // If both are missing, then the entire table block should be removed.
    if (!extractPrices.data.audiobook.was && !extractPrices.data.audiobook.save) {
        htmlContent = htmlContent.replace(audiobookFullWasSaveTableRegex, '');
    }
  }

  // Update the state
  htmlContentState.setValue(htmlContent);
}

// Run the preprocessing function
preprocessHtmlContent();
