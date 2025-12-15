// First, ensure we have a file uploaded to logoLockupImage1
if (!logoLockupImage1.value || logoLockupImage1.value.length === 0) {
  throw new Error("No image has been uploaded to logoLockupImage1.");
}

// Get the current HTML content
let htmlContent = htmlContentState.value;

// Get the image information
const imageInfo = logoLockupImage1.value[0]; // Use the first (and likely only) uploaded image

// Create a promise that resolves when the image is loaded
const getImageDimensions = () => {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.onload = () => resolve({ width: img.width, height: img.height });
    img.onerror = reject;
    img.src = `data:${imageInfo.type};base64,${imageInfo.base64Data}`;
  });
};

// Use an async function to wait for the image dimensions
(async () => {
  try {
    const { width, height } = await getImageDimensions();

    // Find the correct instance of the feature
  const booklineComment = deviceSwitch.value
  ? `<!-- /Device Content Card ${booklineSelect1.value} -->`
  : `<!-- / Bookline ${booklineSelect1.value} -->`;
    
    //  const booklineComment = `<!-- / Bookline ${booklineSelect1.value} -->`;
    let searchStartIndex = htmlContent.indexOf(booklineComment);
    if (searchStartIndex === -1) {
      throw new Error(`Could not find bookline comment: ${booklineComment}`);
    }

    // Determine which feature type we're dealing with
    const featureStartComment = featureSelect1.value === feature_image_left.value ?
      '<!-- Master Email Feature Left -->' :
      '<!-- Master Email Feature Right -->';

    // Find the start of the feature
    let featureStartIndex = htmlContent.indexOf(featureStartComment, searchStartIndex);
    if (featureStartIndex === -1) {
      throw new Error(`Could not find start of feature after ${booklineComment}`);
    }

    // Find the end of the feature
    const featureEndComment = featureSelect1.value === feature_image_left.value ?
      '<!-- /Master Email Feature Left -->' :
      '<!-- /Master Email Feature Right -->';
    let featureEndIndex = htmlContent.indexOf(featureEndComment, featureStartIndex);
    if (featureEndIndex === -1) {
      throw new Error(`Could not find end of feature starting at ${featureStartComment}`);
    }

    // Extract the feature HTML
    let featureHtml = htmlContent.slice(featureStartIndex, featureEndIndex + featureEndComment.length);

    // Function to update image tag
    const updateImageTag = () => {
      // Update src
      let newSrc = `images/${imageInfo.name}`; // Use the name of the uploaded file

      // Use the dimensions we just obtained
      let newWidth = width;
      let newHeight = height;

      // Apply the 2x scaling if necessary
      if (height > 45) {
        newWidth = Math.floor(newWidth / 2);
        newHeight = Math.floor(newHeight / 2);
      }

      // Return updated img tag (changing src, width, and height)
      return `<img src="${newSrc}" alt="" width="${newWidth}" height="${newHeight}" style="display: block; text-align: center; margin: auto;">`;
    };

    // Regular expression to match the logo lockup img tag
    const imgRegex = /<img src="images\/[^"]*" alt="[^"]*" width="[^"]*" height="[^"]*" style="[^"]*">/;

    // Update the feature HTML content
    featureHtml = featureHtml.replace(imgRegex, updateImageTag);

    // Replace the original feature HTML with the updated feature HTML
    htmlContent = htmlContent.slice(0, featureStartIndex) + featureHtml + htmlContent.slice(featureEndIndex + featureEndComment.length);

    // Update the htmlContentState with the modified HTML content
    htmlContentState.setValue(htmlContent);

    return "Logo lockup image 1 updated successfully.";
  } catch (error) {
    throw new Error("Error updating logo lockup image 1: " + error.message);
  }
})();
