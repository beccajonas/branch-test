function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

function formatBulletedList(text) {
  const cleaned = text.replace(/\[.*?\]/g, '').replace(/  +/g, ' ').trim();
  const items = cleaned.split('\n').map(item => item.replace(/^•\s*/, '').trim()).filter(Boolean);

  // Styling for the <ul> tag - EXACTLY as provided in your example
  const ulStyle = "font-family: 'Trebuchet MS',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;line-height:1.2;text-align:left;margin-bottom:0;margin-top:0;";

  // Base styling for <li> tags - EXACTLY as provided in your example
  const baseLiStyle = "font-family: 'Trebuchet MS',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.4;text-align:left;margin-bottom:5px;";

  // Build the <li> elements, handling the last item's margin-bottom
  const lis = items.map((item, index) => {
    // Determine margin-bottom based on whether it's the last item
    const marginBottom = (index < items.length - 1) ? '8px' : '0';

    // --- NEW: Wrap specific characters in <sup> tags using a single regex ---
    // This regex looks for *, **, †, or ‡.
    // The order in the regex matters: longest matches first (e.g., \*\* before \*)
    // The parentheses create a capturing group, which is passed as $1 to the replacer function.
    let formattedItem = item.replace(/(\*\*|[*†‡])/g, '<sup>$1</sup>');
    // --- END NEW ---

    return `<li style="${baseLiStyle}margin-bottom:${marginBottom};">${formattedItem}</li>`;
  }).join('\n'); // Join with newline for readability, no <br>

  return `<ul style="${ulStyle}">\n${lis}\n</ul>`;
}

function cleanPrice(str) {
  return str.replace(/^[^\d$€£]*([\d$€£].*)$/, '$1').trim();
}

function extractAndCleanPrice(label, text) {
  const regex = new RegExp(label + '\\s*[:：]\\s*([\\s\\S]*?)(?:\\n|$)', 'i');
  const match = text.match(regex);
  if (match && match[1]) {
    return cleanPrice(match[1]);
  }
  return null;
}

let htmlContent = htmlContentState.value;
const copyColIndex = letterToColumnIndex(copyColumn.value);
const objArray = directDeviceObj.value;

// 1. Find all "ereader" row indices
const ereaderRowIndices = getSheetsData.data
  .map((row, idx) => {
    const firstCol = row[Object.keys(row)[0]];
    return (firstCol && /\bereader\b/i.test(firstCol)) ? idx : -1;
  })
  .filter(idx => idx !== -1);

// Section header keywords for finishRow logic
const sectionKeywords = ["ereader", "bookline", "legal", "trustpilot"];
function isSectionRow(row) {
  const firstCol = row[Object.keys(row)[0]];
  return firstCol && sectionKeywords.some(kw => firstCol.toLowerCase().includes(kw));
}

// 2. For each device content card section, update using the corresponding "ereader" row
let updatedHtmlContent = htmlContent;

for (let cardNum = 1; cardNum <= ereaderRowIndices.length; cardNum++) {
  const startComment = `<!-- Device Content Card ${cardNum} -->`;
  const endComment = `<!-- /Device Content Card ${cardNum} -->`;
  const startIdx = updatedHtmlContent.indexOf(startComment);
  const endIdx = updatedHtmlContent.indexOf(endComment, startIdx);

  if (startIdx === -1 || endIdx === -1) {
    // If the section is not found, skip
    continue;
  }

  let sectionHtml = updatedHtmlContent.slice(startIdx, endIdx + endComment.length);

  // Use the corresponding "ereader" row as the starting point
  const startingRow = ereaderRowIndices[cardNum - 1];

  // --- NEW: Find finishRow for this card ---
  let finishRow = getSheetsData.data.length; // default to end of data
  for (let i = startingRow + 1; i < getSheetsData.data.length; i++) {
    if (isSectionRow(getSheetsData.data[i])) {
      finishRow = i;
      break;
    }
  }

  // --- Pricing logic (unchanged) ---
  let pricingFound = false;
  let pricingCopyValue = null;
  let pricingObj = objArray.find(obj => obj.keyword.includes("Pricing"));
  if (pricingObj) {
    for (let i = startingRow; i < finishRow; i++) { // <-- use finishRow here
      const row = getSheetsData.data[i];
      const emailCopyLinkDeck = row[Object.keys(row)[0]];
      pricingCopyValue = row[Object.keys(row)[copyColIndex]];
      if (emailCopyLinkDeck && pricingObj.keyword.some(keyword => emailCopyLinkDeck.includes(keyword))) {
        if (pricingCopyValue && pricingCopyValue.trim() !== '') {
          pricingFound = true;
        }
        break;
      }
    }
  }
  if (pricingFound) {
    objArray.forEach(obj => {
      if (
        obj.keyword.includes("Was:") ||
        obj.keyword.includes("Now:") ||
        obj.keyword.includes("Save:")
      ) {
        obj.startComment = "";
        obj.endComment = "";
      }
    });
  }

  // --- NEW: Find CTA value and extract device name ---
  let ctaValue = null;
  for (let i = startingRow; i < finishRow; i++) {
    const row = getSheetsData.data[i];
    const emailCopyLinkDeck = row[Object.keys(row)[0]];
    const copyValue = row[Object.keys(row)[copyColIndex]];
    if (emailCopyLinkDeck && /CTA/i.test(emailCopyLinkDeck) && copyValue && copyValue.trim() !== '') {
      ctaValue = copyValue;
      break;
    }
  }
  let deviceName = null;
  if (ctaValue) {
    const match = ctaValue.match(/Kobo.*/);
    if (match) {
      deviceName = match[0];
    }
  }
  if (deviceName) {
    sectionHtml = sectionHtml.replace(
      /(alt=")\s*DEVICE NAME\s*"/g,
      `$1${deviceName}"`
    );
    // If you want to replace all occurrences, use:
    // sectionHtml = sectionHtml.replaceAll("DEVICE NAME", deviceName);
  }

  objArray.forEach(obj => {
    let keywordFound = false;
    let validCopyValue = false;
    let copyValue = null;

    for (let i = startingRow; i < finishRow; i++) { // <-- use finishRow here
      const row = getSheetsData.data[i];
      const emailCopyLinkDeck = row[Object.keys(row)[0]];
      copyValue = row[Object.keys(row)[copyColIndex]];

      if (emailCopyLinkDeck && obj.keyword.some(keyword => emailCopyLinkDeck.includes(keyword))) {
        keywordFound = true;
        validCopyValue = !!copyValue && copyValue.trim() !== '';

        if (validCopyValue) {
          // Bulleted list formatting
          if (obj.keyword.includes("Description - (bulleted list of retail points from device M&P)")) {
            const formattedList = formatBulletedList(copyValue);
            sectionHtml = sectionHtml.replace(obj.placeholder, formattedList);
          } else if (obj.placeholder === "CTA COPY") {
            sectionHtml = sectionHtml.replace(/^\s*CTA COPY\s*$/m, copyValue);
          } else if (obj.keyword.includes("Was:")) {
            const cleanedCopyValue = cleanPrice(copyValue);
            sectionHtml = sectionHtml.replace(
              /<span style="text-decoration:line-through;color:#000000;">\$XXX\.XX<\/span>/,
              `<span style="text-decoration:line-through;color:#000000;">${cleanedCopyValue}</span>`
            );
          } else if (obj.keyword.includes("Now:")) {
            const cleanedCopyValue = cleanPrice(copyValue);
            sectionHtml = sectionHtml.replace(/\$XXX\.XX(?![^<]*<\/span>)/, cleanedCopyValue);
          } else if (obj.keyword.includes("Save:")) {
            const cleanedCopyValue = cleanPrice(copyValue);
            sectionHtml = sectionHtml.replace(/\$XX\.XX/, cleanedCopyValue);
          } else if (obj.keyword.includes("Pricing")) {
            const wasValue = extractAndCleanPrice('Was', copyValue);
            const nowValue = extractAndCleanPrice('Now', copyValue);
            const saveValue = extractAndCleanPrice('Save', copyValue);
            if (wasValue) {
              sectionHtml = sectionHtml.replace(
                /<span style="text-decoration:line-through;color:#000000;">\$XXX\.XX<\/span>/,
                `<span style="text-decoration:line-through;color:#000000;">${wasValue}</span>`
              );
            }
            if (nowValue) {
              sectionHtml = sectionHtml.replace(/\$XXX\.XX(?![^<]*<\/span>)/, nowValue);
            }
            if (saveValue) {
              sectionHtml = sectionHtml.replace(/\$XX\.XX/, saveValue);
            }
          } else {
            sectionHtml = sectionHtml.replace(obj.placeholder, copyValue);
          }
        }
        break;
      }
    }

    // If no keyword match is found or the copy value is not valid, remove the section between comments
    if (!keywordFound || !validCopyValue) {
      // Use the numbered comment format for this card
      const sectionStartComment = `<!--\\s*${obj.startComment}\\s*-->`;
      const sectionEndComment = `<!--\\s*/\\s*${obj.endComment}\\s*-->`;
      const regex = new RegExp(`${sectionStartComment}[\\s\\S]*?${sectionEndComment}`, 'gi');
      sectionHtml = sectionHtml.replace(regex, '');
    }
  });

  // Replace the section in the HTML with the updated section
  updatedHtmlContent =
    updatedHtmlContent.slice(0, startIdx) +
    sectionHtml +
    updatedHtmlContent.slice(endIdx + endComment.length);
}

htmlContentState.setValue(updatedHtmlContent);
