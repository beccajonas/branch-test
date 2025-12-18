const list = {{ getSheetsList.data.sheets }};

// Initialize an empty array to hold the sheet names
let sheetsArray = [];

// Iterate over the keys of the data.sheets object
for (let key in list) {
  if (list.hasOwnProperty(key)) {
    // Push the sheet title into the sheetsArray
    sheetsArray.push(list[key].properties.title);
  }
}

// Return the array of sheet names
return sheetsArray;
