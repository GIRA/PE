as yet unclassified
setContentsOf: morph to: value
	morph isTextMorph
		ifTrue: [morph newContents: value]
		ifFalse: [morph contents: value].
	(morph owner isKindOf: SimpleButtonMorph)
		ifTrue: [morph owner fitContents]