let htmlContent = htmlContentState.value;
const deviceValue = deviceBooklineReskin.value;
const booklineValue = deviceBooklineLocation.value;

// Determine if we're inserting at the footer
const isFooter = Number(booklineValue) === updateBooklineSelect.data.length;

// Choose the correct comment to find
let commentToFind;
if (isFooter) {
  commentToFind = '<!-- Footer -->';
} else if (deviceSwitch.value) {
  commentToFind = `<!-- Device Content Card ${booklineValue} -->`;
} else {
  commentToFind = `<!-- Bookline ${booklineValue} -->`;
}

// Determine if and how to wrap the device value
const valueToInsert = dcrDeviceBookline.value !== "None" ? 
  `<#if ${dcrDeviceBookline.value}>\n${deviceValue}\n</#if>` : 
  deviceValue;

const commentPosition = htmlContent.indexOf(commentToFind);

if (commentPosition !== -1) {
  // Insert before the comment, with a blank line below
  const newHtmlContent = htmlContent.slice(0, commentPosition) + valueToInsert + '\n\n' + htmlContent.slice(commentPosition);
  htmlContentState.setValue(newHtmlContent);
  return "Device Bookline value inserted successfully with a blank row below.";
} else {
  throw new Error(`Comment "${commentToFind}" not found in HTML content.`);
}

//  updateBooklineSelect.data.length = updateBooklineSelect.data.length + 1;