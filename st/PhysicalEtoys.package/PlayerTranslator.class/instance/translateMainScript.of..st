translating
translateMainScript: scriptName of: scriptOwner
	"Entry point for the PlayerTranslator. It creates a temporary subclass
	to hold the code which will be translated to c.

	Steps:
	* Collect relevant information (morphs composing the robot, slots, accessors and scripts).
	* Compile all scripts.
	* Compile #loop method.
	* Compile #setup method.
	* Remove temporary class (to discard garbage).	
	* Compile temporary class.
	* Return generated class"
	self collectRelevantInformation.
	self
		assert: [self allMorphs includes: scriptOwner]
		description: 'The morph is not connected to the main morph';
		assert: [scriptOwner assuredPlayer class scripts includesKey: scriptName]
		description: 'The script doesn''t belong to the morph'.
	methods := Set new. 
	self
		scriptSelectorsDo: [:selector | 
			| node | 
			self visitNode: (node := self parseTreeFor: selector).
			"Only create control variables for ticking scripts"
			(selector endsWith: ':')
				ifFalse: [self 
							createControlVariablesFor: selector
							started: (selector = scriptName
								and: [currentMorph = scriptOwner])].
			methods add: node formattedCode].
	self
		withCurrentMorph: scriptOwner
		do: [self compileLoopMethod; compileSetUpMethod];
		setAuthorInitialsIfNecessary;
		removeTempProgramSubclass;
		compileTempProgramSubclass.
	^ self programClass