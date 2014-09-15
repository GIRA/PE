*physicaletoys
enterNew
	| newP |
	newP := Project newMorphicOn: nil.
	newP world 
		addMorph: (DoCommandOnceMorph new
			extent: 1@1;
			actionBlock: [(Flaps globalFlapTab: 'Physical Etoys')
				ifNotNil: [:flap | PEStartHereMorph new openInWorld]];
			deleteAfterExecution: true;
			yourself).
	newP enter