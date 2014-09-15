viewer categories
additionsToViewerCategories
^ #(
(#'file list' (
#(command openDirectory 'Opens the selected item (assuming it''s a directory)')
#(command updateCurrentDirectory 'Updates the contents of the list')
#(slot entryIndex 'Lets you modify the selected item' Number readWrite Player getEntryIndex Player setEntryIndex:)
#(slot entryName 'Shows the name of the selected item' String readOnly Player getEntryName Player unused)
#(slot entryPath 'Shows the full path of the selected item' String readOnly Player getEntryPath Player unused)
#(slot entryExtension 'Shows the extension of the selected item' String readOnly Player getEntryExtension Player unused)
#(slot entriesCount 'Shows how many items are in the current directory' Number readOnly Player getEntriesCount Player unused)
#(slot isDirectory 'Shows if the selected item is a directory or a file' Boolean readOnly Player getIsDirectory Player unused)
#(slot showDirectories 'Set to true if you want to show directories in the list' Boolean readWrite Player getShowDirectories Player setShowDirectories:)
#(slot filter 'A string you can use to filter the list' String readWrite Player getFilter Player setFilter:)
))
)