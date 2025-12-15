function replaceFirstOccurrence(str, regex, replacer) {
  const match = regex.exec(str);
  if (!match) return str;
  const before = str.slice(0, match.index);
  const after = str.slice(match.index + match[0].length);
  return before + replacer(match[0]) + after;
}

const directDeviceCards = [
  {
    logoDrop: directLogo1Drop,
    logoWidthState: directDevice1LogoWidth,
    logoHeightState: directDevice1LogoHeight,
    logoFilenamePlaceholder: "Lockup_Clara2e.png",
    deviceDrop: directDevice1Drop,
    deviceWidthState: directDevice1DevWidth,
    deviceHeightState: directDevice1DevHeight,
    deviceFilenamePlaceholder: "KoboClara.png",
  },
  {
    logoDrop: directLogo2Drop,
    logoWidthState: directDevice2LogoWidth,
    logoHeightState: directDevice2LogoHeight,
    logoFilenamePlaceholder: "Lockup_Clara2e.png",
    deviceDrop: directDevice2Drop,
    deviceWidthState: directDevice2DevWidth,
    deviceHeightState: directDevice2DevHeight,
    deviceFilenamePlaceholder: "KoboClara.png",
  },
  {
    logoDrop: directLogo3Drop,
    logoWidthState: directDevice3LogoWidth,
    logoHeightState: directDevice3LogoHeight,
    logoFilenamePlaceholder: "Lockup_Clara2e.png",
    deviceDrop: directDevice3Drop,
    deviceWidthState: directDevice3DevWidth,
    deviceHeightState: directDevice3DevHeight,
    deviceFilenamePlaceholder: "KoboClara.png",
  }
];

let htmlContent = htmlContentState.value;

directDeviceCards.forEach((card) => {
  const logoFile = card.logoDrop.value && card.logoDrop.value[0];
  const deviceFile = card.deviceDrop.value && card.deviceDrop.value[0];
  const logoWidth = card.logoWidthState.value;
  const logoHeight = card.logoHeightState.value;
  const deviceWidth = card.deviceWidthState.value;
  const deviceHeight = card.deviceHeightState.value;

  if (!logoFile || !deviceFile || !logoWidth || !logoHeight || !deviceWidth || !deviceHeight) {
    return;
  }

  // --- Update logo image (first occurrence only) ---
  const logoFilename = logoFile.name;
  const logoImgTagRegex = new RegExp(
    `<img src="images/${card.logoFilenamePlaceholder}"[^>]*>`,
    ""
  );
  htmlContent = replaceFirstOccurrence(htmlContent, logoImgTagRegex, (match) => {
    const newHeight = logoWidth >= 768 ? Math.floor(logoHeight / 2) : logoHeight;
    return match
      .replace(card.logoFilenamePlaceholder, logoFilename)
      .replace(/height="[^"]*"/, `height="${newHeight}"`);
  });

  // --- Update device image (first occurrence only) ---
  const deviceFilename = deviceFile.name;
  const deviceImgTagRegex = new RegExp(
    `<img alt="" src="images/${card.deviceFilenamePlaceholder}"[^>]*>`,
    ""
  );
  htmlContent = replaceFirstOccurrence(htmlContent, deviceImgTagRegex, (match) => {
    const newHeight = deviceWidth >= 768 ? Math.floor(deviceHeight / 2) : deviceHeight;
    return match
      .replace(card.deviceFilenamePlaceholder, deviceFilename)
      .replace(/height="[^"]*"/, `height="${newHeight}"`);
  });
});

htmlContentState.setValue(htmlContent);

// Optionally reset states if needed
directDevice1LogoWidth.setValue(0);
directDevice1LogoHeight.setValue(0);
directDevice1DevWidth.setValue(0);
directDevice1DevHeight.setValue(0);

directDevice2LogoWidth.setValue(0);
directDevice2LogoHeight.setValue(0);
directDevice2DevWidth.setValue(0);
directDevice2DevHeight.setValue(0);

directDevice3LogoWidth.setValue(0);
directDevice3LogoHeight.setValue(0);
directDevice3DevWidth.setValue(0);
directDevice3DevHeight.setValue(0);
