// Check if all necessary data is available
if (heroDrop.value && heroDrop.value.length > 0 && imgHeightState.value) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Get the image height from the state
  let imgHeight = imgHeightState.value;

    // Get the image height from the state
  let imgWidth = imgWidthState.value;

  //  console.log(imgWidth);

  // Adjust the image height if it was exported at 2x resolution
  if (imgWidth >= 1100) {
    imgHeight = Math.floor(imgHeight / 2);
  }

if (heroReskinMenu.selectedLabel.includes("Hero_Generic Side by Side")&&(imgWidth > 300)) {
  imgHeight = Math.floor(imgHeight / 2);
};
  
  // Get the filename from the uploaded file
  const filename = heroDrop.value[0].name;

  // Construct the new src value for the image
  const newSrc = `images/${filename}`;

  // Define the patterns to search for and their replacements in the HTML
  let patterns;

  if (heroSelect.value === hero_default.value) {
    patterns = [
      { search: /<img src="images\/[^"]*"/, replace: `<img src="${newSrc}"` },
      { search: /height="0"/, replace: `height="${imgHeight}"` },
      { search: /alt="Hero Image Alt"/, replace: `alt=""` }
    ];
  } else if (heroSelect.value === hero_dual_was_now.value) {
    patterns = [
      { search: /<img src="images\/topper\.png"/, replace: `<img src="${newSrc}"` },
      { search: /height="xx"/, replace: `height="${imgHeight}"` },
      { search: /alt=""/, replace: `alt=""` } // This line effectively does nothing, but is included for consistency
    ];
  } else if (heroSelect.value === hero_image.value) {
    patterns = [
      { search: /<img src="images\/XXXX"/, replace: `<img src="${newSrc}"` },
      { search: /height="0"/, replace: `height="${imgHeight}"` }
    ];
  } else if (heroReskinMenu.value == heroSpotlight.value) {
     patterns = [
      { search: /<img src="images\/[^"]*"/, replace: `<img src="${newSrc}"` },
      { search: /height="(0|377|250|200|300|741)"/, replace: `height="${imgHeight}"` },
      //  { search: /width="[^"]*"/, replace: `width="${imgWidth}"` },
];
  } else if (heroSelect.value === "None" && heroReskinMenu.value != heroSpotlight.value) {
    patterns = [
      { search: /<img src="images\/[^"]*"/, replace: `<img src="${newSrc}"` },
      { search: /height="(0|377|250|200|300|741)"/, replace: `height="${imgHeight}"` },
      //  { search: /width="[^"]*"/, replace: `width="${imgWidth}"` },
      { search: /alt="[^"]*"/, replace: `alt=""` }
];
  }

  // Apply each pattern to update the HTML content if patterns are defined
  if (patterns) {
    patterns.forEach(pattern => {
      htmlContent = htmlContent.replace(pattern.search, pattern.replace);
    });

    // Update the HTML content state with the modified content
    htmlContentState.setValue(htmlContent);

    // Reset the image height state to its initial value
    imgHeightState.setValue(0);
  }
}
