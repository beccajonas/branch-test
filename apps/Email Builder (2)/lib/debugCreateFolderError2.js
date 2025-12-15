
try {

await createFolder.trigger({onSuccess:"Folder Created", onFailure:deleteFolder.trigger()})
}
catch(error) {
  return "failed";
}

