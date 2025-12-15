// First, ensure we have a file uploaded to featureImage1
if (!featureImage3.value || featureImage3.value.length === 0) {
  throw new Error("No image has been uploaded to featureImage3.");
}

// Get the current HTML content
let htmlContent = htmlContentState.value;

// Get the image information
const imageInfo = featureImage3.value[0]; // Use the first (and likely only) uploaded image

// Create a promise that resolves when the image is loaded
const getImageHeight = () => {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.onload = () => resolve(img.height);
    img.onerror = reject;
    img.src = `data:${imageInfo.type};base64,${imageInfo.base64Data}`;
  });
};

// Use an async function to wait for the image height
(async () => {
  try {
    const imageHeight = await getImageHeight();

    // Define the specific image regex that will be used *within* the identified block
    // This regex looks for an <img> tag that has src="images/ANYTHING", alt="ANYTHING", and height="NUMBER"
    // It is flexible on attribute order, but only applies to the specific <img> tag found.
    const innerImgRegex = /<img(?=\s|>)(?=(?:[^>"']|"[^"]*"|'[^']*')*?\ssrc="images\/[^"]*")(?=(?:[^>"']|"[^"]*"|'[^']*')*?\salt="[^"]*")(?=(?:[^>"']|"[^"]*"|'[^']*')*?\sheight="\d+")(?:[^>"']|"[^"]*"|'[^']*')*?>/g;


    // Define the outer regex to find the block delimited by comments
    // This is the primary regex that will match in the htmlContent
    // Updated comments to FEATURE 1 and /FEATURE 1
    const blockRegex = /<!--\s*FEATURE 3\s*-->([\s\S]*?)<!--\s*\/FEATURE 3\s*-->/g;


    // Function to update the entire block
    const updateImageBlock = (fullMatch, innerHtmlContent) => {
      // innerHtmlContent is the content *between* the comments

      // Function to update the image tag *within* the innerHtmlContent
      const updateImageTag = (match) => {
        let newSrc = `images/${imageInfo.name}`;
        let newHeight = imageHeight;

        // Apply the 2x scaling with the corrected component names
        // MODIFIED SCALING LOGIC START
 if (featureImgWidthState3.value >= 532 && featureSelect3.value != "None") {
  newHeight = Math.floor(newHeight / 2);
} else if (featureImgWidthState3.value >= 468 && featureSelect3.value == "None") {
  newHeight = Math.floor(newHeight / 2);
}
        // MODIFIED SCALING LOGIC END

        return match
          .replace(/src="[^"]*"/, `src="${newSrc}"`)
          .replace(/alt="[^"]*"/, `alt=""`)
          .replace(/height="[^"]*"/, `height="${newHeight}"`);
      };

      // Perform the image tag replacement only within the extracted innerHtmlContent
      const updatedInnerHtml = innerHtmlContent.replace(innerImgRegex, updateImageTag);

      // Return the full block with the updated image tag, preserving the comments
      // Updated comments to FEATURE 1 and /FEATURE 1
      return `<!-- FEATURE 3 -->${updatedInnerHtml}<!-- /FEATURE 3 -->`;
    };

    // Update the HTML content
    htmlContent = htmlContent.replace(blockRegex, updateImageBlock);

    // Update the htmlContentState with the modified HTML content
    htmlContentState.setValue(htmlContent);

  } catch (error) {
    throw new Error("Error loading image: " + error.message);
  }
})();
