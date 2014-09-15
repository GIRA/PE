as yet unclassified
mouseDownTick: evt onItem: aMorph
	aMorph isSketchMorph ifFalse: [^ self].
	aMorph rotatedForm floodFill: Color green at: 5@5. 
	aMorph changed