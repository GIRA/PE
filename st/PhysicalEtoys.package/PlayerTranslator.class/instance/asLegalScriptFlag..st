converting
asLegalScriptFlag: aSymbol 
	"Returns the name of the flag variable used to stop this script"
	^ self asLegalName: (self asScriptFlag: aSymbol)