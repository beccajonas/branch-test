// Check if all necessary data is available for all devices
if (
  device1Drop.value && device1Drop.value.length > 0 && device1ImgState.value &&
  device2Drop.value && device2Drop.value.length > 0 && device2ImgState.value &&
  device3Drop.value && device3Drop.value.length > 0 && device3ImgState.value
) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Define an array of devices with their corresponding states and filenames
  const devices = [
    {
      drop: device1Drop,
      imgState: device1ImgState,
      imgWidthState: device1ImgWidthState, 
      filenamePlaceholder: "libra.png", // Placeholder in the HTML to replace
    },
    {
      drop: device2Drop,
      imgState: device2ImgState,
      imgWidthState: device2ImgWidthState,
      filenamePlaceholder: "clara.png", // Placeholder in the HTML to replace
    },
    {
      drop: device3Drop,
      imgState: device3ImgState,
      imgWidthState: device3ImgWidthState,
      filenamePlaceholder: "forma.png", // Placeholder in the HTML to replace
    },
  ];

  // Iterate over each device and update the HTML content
  devices.forEach((device, index) => {
    // Get the image height from the state
    let imgHeight = device.imgState.value;

    // Adjust the image height if it was exported at 2x resolution
    if (device.imgWidthState.value >= 280) {
      imgHeight = Math.floor(imgHeight / 2);
    }

    // Get the filename from the uploaded file
    const filename = device.drop.value[0].name;

    // Construct the new src value for the image
    const newSrc = `images/${filename}`;

    // Define the pattern to search for the specific <img> tag and update its src and height
    const imgTagRegex = new RegExp(
      `<img src="images/${device.filenamePlaceholder}"([^>]*)>`,
      "g"
    );

    // Replace the <img> tag with the updated src and height
    htmlContent = htmlContent.replace(imgTagRegex, (match, attributes) => {
      // Update the height attribute in the <img> tag
      const updatedAttributes = attributes.replace(
        /height="[^"]*"/,
        `height="${imgHeight}"`
      );

      // Return the updated <img> tag
      return `<img src="${newSrc}"${updatedAttributes}>`;
    });

    // Log the updates for debugging
    //  console.log(`Device ${index + 1}: Updated image to ${newSrc} with height ${imgHeight}px`);
  });

  // Update the HTML content state with the modified content
  htmlContentState.setValue(htmlContent);

  // Reset the image height states to their initial values
  device1ImgState.setValue(0);
  device2ImgState.setValue(0);
  device3ImgState.setValue(0);
} else {
  throw new Error("One or more devices are missing necessary data (dropzone file or image height).");
}
