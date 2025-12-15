// Get the current HTML content
let htmlContent = htmlContentState.value;

// Determine the start and end comments based on dcrDeviceBookline.value
let startComment, endComment;

if (dcrDeviceBookline.value !== "None") {
  // Use conditional start comments combined with the opening device bookline comment
  const conditionalStartComments = [
    '<#if CX != "ESFNAC">\n<!--Device Bookline -->',
    '<#if CX != "FRFNAC">\n<!--Device Bookline -->',
    '<#if CX != "PTFNAC">\n<!--Device Bookline -->',
    '<#if CX != "ITM">\n<!--Device Bookline -->'
  ];

  // Find which combined start comment exists in the HTML content
  startComment = conditionalStartComments.find(comment => htmlContent.includes(comment));
  if (!startComment) {
    throw new Error("Could not find any conditional start comment combined with the device bookline opening comment.");
  }

  // Use the combined end comment
  endComment = '<!--/ Device Bookline -->\n</#if>';
} else {
  // Use the default start and end comments
  startComment = '<!--Device Bookline -->';
  endComment = '<!--/ Device Bookline -->';
}

// Find the start position
const startIndex = htmlContent.indexOf(startComment);
if (startIndex === -1) {
  throw new Error(`Could not find the start comment: ${startComment}`);
}

// Find the end position
const endIndex = htmlContent.indexOf(endComment, startIndex);
if (endIndex === -1) {
  throw new Error(`Could not find the end comment: ${endComment}`);
}

// Remove the entire block, including the <#if> and </#if> tags
htmlContent = htmlContent.slice(0, startIndex) + 
              htmlContent.slice(endIndex + endComment.length);

// Update the htmlContentState
htmlContentState.setValue(htmlContent);

return "Device Bookline removed successfully";
