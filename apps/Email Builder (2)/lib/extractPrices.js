function letterToColumnIndex(letter) {
  return letter.toUpperCase().charCodeAt(0) - 65;
}

function extractPrices(data, userColumnLetter) {
  const copyColIndex = letterToColumnIndex(userColumnLetter);

  let prices = {
    ebook: { now: null, was: null, save: null },
    audiobook: { now: null, was: null, save: null }
  };

  let nowPriceCount = 0;
  let lastCategory = '';

  for (let row of data) {
    const category = row[Object.keys(row)[0]].toLowerCase().trim();
    
    // Stop the function if "bookline" is found
    if (category.includes('bookline')) {
      break;
    }

    const value = row[Object.keys(row)[copyColIndex]];

    if (!value) continue;

    if (category.includes('ebook price')) {
      prices.ebook.now = value;
      lastCategory = 'ebook';
    } else if (category.includes('audio book price')) {
      prices.audiobook.now = value;
      lastCategory = 'audiobook';
    } else if (category.includes('now price') && !prices[lastCategory === 'ebook' ? 'audiobook' : 'ebook'].now) {
      if (nowPriceCount === 0) {
        prices.ebook.now = value;
        lastCategory = 'ebook';
      } else if (nowPriceCount === 1) {
        prices.audiobook.now = value;
        lastCategory = 'audiobook';
      }
      nowPriceCount++;
    } else if ((category.includes('was price') || category.includes('you save price')) && category.includes('if required')) {
      const [was, save] = value.split('/').map(v => v.trim());
      if (was && was !== '0') {
        prices[lastCategory].was = was;
        if (save) prices[lastCategory].save = save;
      }
    }
  }

  // Clean up and format
  for (let product in prices) {
    for (let priceType in prices[product]) {
      if (prices[product][priceType] === null) {
        delete prices[product][priceType];
      }
    }
    if (Object.keys(prices[product]).length === 0) {
      delete prices[product];
    }
  }
//  console.log('Extracted Prices:', JSON.stringify(prices, null, 2));

  return prices;
}

// Usage
const userColumnLetter = copyColumn.value;
const extractedPrices = extractPrices(getSheetsData.data, userColumnLetter);
return extractedPrices;
