translating
createControlVariablesFor: scriptSelector started: startedBoolean
	"Creates the variables to control the execution of the
	given script. 
	The started variable determines if the script should begin
	with its flag set to true."
	(variables at: currentMorph)
		at: (self asScriptFlag: scriptSelector)
		put: #Boolean -> startedBoolean.
	(variables at: currentMorph)
		at: (self asScriptLastTime: scriptSelector)
		put: #CUnsignedLong -> 0
