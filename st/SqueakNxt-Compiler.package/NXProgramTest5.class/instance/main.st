as yet unclassified
main
	4 = 3 ifTrue: [self off: 0; off: 1].
	true not ifFalse: [self off: 1].
	false not not ifTrue: [self off: 1] ifFalse: [self off: 0].
	4 > (5 * 2) ifFalse: [self off: 2] ifTrue: [self off: 1]