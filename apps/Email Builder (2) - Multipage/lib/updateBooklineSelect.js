// Set count based on deviceSwitch.value
const count = deviceSwitch.value
  ? removeUnusedBooklines.data.ereaderCount
  : removeUnusedBooklines.data.booklineCount;

let contentType;

if (deviceSwitch.value) {
  contentType="Below Device Card ";
} else {
  contentType="Below Bookline ";
}

// Create the booklineCount array dynamically
const booklineCount = Array.from({ length: count }, (_, index) => ({
  label: (contentType+(index + 1)).toString(),
  value: index + 1
}));

const defaultOption = {
  label: 'Below Hero', 
  value: 0
};

// Push the default option to the beginning of the array
booklineCount.unshift(defaultOption);

// Set the value of the Retool state variable
booklineDropdownOptions.setValue(booklineCount);
//  console.log("updateBooklineSelect: booklineDropdownOptions set to length =", booklineDropdownOptions.value.length); // DEBUG 5
//  console.log(booklineCount);
//  console.log(booklineDropdownOptions.value);

// Return the booklineCount array
return booklineCount;