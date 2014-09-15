as yet unclassified
main
	true ifTrue: [self off: 0].
	true ifFalse: [self off: 1].
	false ifTrue: [self off: 1] ifFalse: [self off: 0].
	false ifFalse: [self off: 2] ifTrue: [self off: 1]