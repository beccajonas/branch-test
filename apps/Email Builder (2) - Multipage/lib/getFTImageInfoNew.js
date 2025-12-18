// Define the maximum file size (275 KB in bytes)
const MAX_FILE_SIZE = 275 * 1024;

// Get the first file from the featureImage1 component
const file = featureImage1.value[0];

// Check if the file size exceeds the maximum allowed size
if (file.size > MAX_FILE_SIZE) {
  throw new Error(`File size exceeds the maximum limit of 275 KB`);
}

// Get the filename and convert it to lowercase for easier extension checking
const filename = file.name.toLowerCase();

// Determine the MIME type based on the file extension
let mimeType;
if (filename.endsWith('.png')) {
  mimeType = 'image/png';
} else if (filename.endsWith('.gif')) {
  mimeType = 'image/gif';
} else {
  mimeType = 'image/jpeg'; // Default to JPEG for other extensions (including .jpg and .jpeg)
}

// Create a new Image object
const img = new Image();

// Set the source of the image using a data URL with the appropriate MIME type
img.src = `data:${mimeType};base64,${file.base64Data}`;

// When the image loads, get its height and store it in the state
img.onload = function () {
  const imgHeight = img.height;
  const imgWidth = img.width;
  featureImgHeightState1.setValue(imgHeight);
  featureImgWidthState1.setValue(imgWidth);
};

// Add error handling for image loading
img.onerror = function() {
  throw new Error("Failed to load image");
};

// Return some information about the image
return {
  filename: filename,
  mimeType: mimeType,
  size: file.size
};
