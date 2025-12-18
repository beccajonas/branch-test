// Check if the conditions are met to run this query
if (heroSelect.value === hero_dual_was_now.value && heroDualSwitch.value) {
  // Get the current HTML content
  let htmlContent = htmlContentState.value;

  // Define the content to be replaced
  const oldContent = `<td width="550" style="color:#000000;font-family:'Trebuchet MS',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">
    <!-- IMG TOPPER and FILL IN ALT TEXT -->
            <img src="images/topper.png" width="550" height="xx" alt="" style="display:block;background:#bf0000;" border="0" />
        </td>`;

  // Define the new content
  const newContent = `<td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:'Trebuchet MS',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    
        Topper Text
      </td>`;

  // Perform the replacement
  htmlContent = htmlContent.replace(oldContent, newContent);

  // Update the HTML content state
  htmlContentState.setValue(htmlContent);

  return "Topper image replaced with text successfully.";
} else {
  return "Conditions not met to replace topper image with text.";
}
