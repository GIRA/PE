as yet unclassified
mouseUpTick: evt onItem: aMorph 
	(PEProgressBar
		label: 'Downloading script:' translated
		subLabel: ('{1} {2}' format: {
			self scriptInstantiation player externalName.
			self scriptInstantiation selector printString}))
		showWhile: [self doAction]
		timeout: 60