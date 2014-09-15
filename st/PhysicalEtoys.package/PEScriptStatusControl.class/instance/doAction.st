as yet unclassified
doAction
	| morph scriptName program player |
	[player := self scriptInstantiation player.
	player isUsingCompiledMode
		ifFalse: ["Something went wrong. 
			Probably the device was detached."
			player updateScriptEditors.
			^ self].
	morph := player costume renderedMorph.
	morph detectMainMorph isConnected
		ifFalse: [^ self].
	scriptName := self scriptInstantiation selector.
	program := morph translateScriptNamed: scriptName.
	Transcript show: program;
		 cr;
		 show: '----------------------------------------------------------------------';
		 cr. 
	Transcript
		show: (morph download: program);
		 cr;
		 show: '----------------------------------------------------------------------';
		 cr]
		ensure: [
			tickPauseWrapper isSketchMorph ifFalse: [^ self].
			tickPauseWrapper rotatedForm floodFill: (Color r: 0.774 g: 1.0 b: 0.774) at: 5@5.
			tickPauseWrapper changed].