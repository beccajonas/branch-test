// Get the content of the HTML component
const content = html1.html;

// Create the full HTML document
const fullHTML = `${content}`;

// Function to extract the code from sheetSelect value and sanitize filename
function getFileName(value) {
  if (!value) return 'exported_content.html';
  
  const match = value.match(/^(MK-\d{5,6}(?:-\d{1,2})?)/);
  if (match) return match[1] + '.html';
  
  // If no match, use the full value and sanitize it
  return sanitizeFileName(value) + '.html';
}

// Function to sanitize filename
function sanitizeFileName(name) {
  // Remove or replace characters that are typically problematic in filenames
  return name.replace(/[<>:"/\\|?*\x00-\x1F]/g, '')  // Remove illegal characters
             .replace(/^\.+/, '')  // Remove leading periods
             .replace(/\s+/g, '_')  // Replace spaces with underscores
             .trim();  // Trim leading and trailing whitespace
}

// Get the file name
const fileName = getFileName(sheetSelect.value);

// Create a Blob with the HTML content
const blob = new Blob([fullHTML], { type: 'text/html' });

// Create a URL for the Blob
const url = URL.createObjectURL(blob);

// Create a temporary anchor element
const a = document.createElement('a');
a.href = url;
a.download = fileName;

// Append the anchor to the body, click it, and remove it
document.body.appendChild(a);
a.click();
document.body.removeChild(a);

// Revoke the Blob URL to free up resources
URL.revokeObjectURL(url);

return `HTML exported successfully as ${fileName}!`;
