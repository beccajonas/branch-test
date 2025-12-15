//  booklineDropdownOptions.setIn([(booklineDropdownOptions.value.length),"label"], (booklineDropdownOptions.value.length+1).toString());
//  booklineDropdownOptions.setIn([(booklineDropdownOptions.value.length),"value"], (booklineDropdownOptions.value.length+1));

let count; // Declare count in the outer scope

if (deviceSwitch.value) {
  count = (removeUnusedBooklines.data.ereaderCount + 1); // Assign value
} else {
  count = (removeUnusedBooklines.data.booklineCount + 1); // Assign value
}

// Now, 'count' is accessible here with the value assigned in the if/else block
booklineDropdownOptions.setIn([count, "value"], "DeviceBookline");
booklineDropdownOptions.setIn([count, "label"], "Below Device Bookline");
booklineYesNo.setValue(true);
//  booklineDropdownOptions.setIn([(removeUnusedBooklines.data.booklineCount+1),"label"], "Device Bookline");
//  booklineDropdownOptions.setIn([(removeUnusedBooklines.data.booklineCount+1),"value"], 0);
//  booklineDropdownOptions.setIn([(removeUnusedBooklines.data.deviceBooklinePosition+1),"label"],(booklineDropdownOptions.value.length-removeUnusedBooklines.data.deviceBooklinePosition));

//  calloutLocation.data[3].label("Test")