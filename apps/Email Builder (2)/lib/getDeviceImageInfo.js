// Define the maximum file size (275 KB in bytes)
const MAX_FILE_SIZE = 275 * 1024;

// Define an array of dropzones and their corresponding image states
const devices = [
  { dropzone: device1Drop, imgState: device1ImgState, imgWidthState: device1ImgWidthState },
  { dropzone: device2Drop, imgState: device2ImgState, imgWidthState: device2ImgWidthState },
  { dropzone: device3Drop, imgState: device3ImgState, imgWidthState: device3ImgWidthState }
];

// Iterate over each device dropzone and process the image
devices.forEach((device, index) => {
  // Get the first file from the current dropzone
  const file = device.dropzone.value[0];

  // Check if a file exists in the dropzone
  if (!file) {
    console.log(`No file uploaded for device ${index + 1}`);
    return; // Skip to the next device if no file is uploaded
  }

  // Check if the file size exceeds the maximum allowed size
  if (file.size > MAX_FILE_SIZE) {
    throw new Error(`File size for device ${index + 1} exceeds the maximum limit of 275 KB`);
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

  // When the image loads, get its height and store it in the corresponding state
  img.onload = function () {
    const imgHeight = img.height;
    const imgWidth = img.width;
    device.imgState.setValue(imgHeight);
    device.imgWidthState.setValue(imgWidth);
    //  console.log(`Device ${index + 1}: Image height is ${imgHeight}px`);
  };

  // Log the filename for debugging
  //  console.log(`Device ${index + 1}: Filename is ${filename}`);
});
