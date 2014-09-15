accessing
direction: aSymbol
	"aSymbol can be either: #Backward, #Forward, or #Stop"
	direction := aSymbol.
	self refresh
