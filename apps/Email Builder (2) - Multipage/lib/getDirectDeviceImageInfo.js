// Define the maximum file size (275 KB in bytes)
const MAX_FILE_SIZE = 275 * 1024;

// Define an array of dropzones and their corresponding image states for each device and logo
const directDevices = [
  // Device 1
  {
    dropzone: directLogo1Drop,
    widthState: directDevice1LogoWidth,
    heightState: directDevice1LogoHeight,
    label: "Device 1 Logo"
  },
  {
    dropzone: directDevice1Drop,
    widthState: directDevice1DevWidth,
    heightState: directDevice1DevHeight,
    label: "Device 1 Image"
  },
  // Device 2
  {
    dropzone: directLogo2Drop,
    widthState: directDevice2LogoWidth,
    heightState: directDevice2LogoHeight,
    label: "Device 2 Logo"
  },
  {
    dropzone: directDevice2Drop,
    widthState: directDevice2DevWidth,
    heightState: directDevice2DevHeight,
    label: "Device 2 Image"
  },
  // Device 3
  {
    dropzone: directLogo3Drop,
    widthState: directDevice3LogoWidth,
    heightState: directDevice3LogoHeight,
    label: "Device 3 Logo"
  },
  {
    dropzone: directDevice3Drop,
    widthState: directDevice3DevWidth,
    heightState: directDevice3DevHeight,
    label: "Device 3 Image"
  }
];

// Iterate over each dropzone and process the image
directDevices.forEach((item, index) => {
  // Get the first file from the current dropzone
  const file = item.dropzone.value[0];

  // Check if a file exists in the dropzone
  if (!file) {
    //  console.log(`No file uploaded for ${item.label}`);
    return; // Skip to the next if no file is uploaded
  }

  // Check if the file size exceeds the maximum allowed size
  if (file.size > MAX_FILE_SIZE) {
    throw new Error(`File size for ${item.label} exceeds the maximum limit of 275 KB`);
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

  // When the image loads, get its width and height and store them in the corresponding states
  img.onload = function () {
    const imgHeight = img.height;
    const imgWidth = img.width;
    item.heightState.setValue(imgHeight);
    item.widthState.setValue(imgWidth);
    // console.log(`${item.label}: Image size is ${imgWidth}x${imgHeight}px`);
  };

  // Log the filename for debugging
  // console.log(`${item.label}: Filename is ${filename}`);
});
