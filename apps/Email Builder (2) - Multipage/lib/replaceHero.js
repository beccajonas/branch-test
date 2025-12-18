// Get the current HTML content
let htmlContent = htmlContentState.value;

let preview = "COPY CODE FOR HERO (SELECT THE HERO FILE AS PER FIGMA)";

// Check if the placeholder exists in the HTML content
if (htmlContent.includes(preview)) {

  let replacementText;
  // Replace the placeholder with the selected hero component
  if (heroSelect.value === "None") {
  replacementText = heroReskinMenu.value;
  } else {
  replacementText = heroSelect.value;
  }
  
  htmlContent = htmlContent.replace(preview, replacementText);

  // Update the htmlContentState with the modified HTML content
  htmlContentState.setValue(htmlContent);
}
