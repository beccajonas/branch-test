const campName = campaignName.value;
const processedName = campName.replace(/^.*?(MK.*)$/, "$1");

return processedName;