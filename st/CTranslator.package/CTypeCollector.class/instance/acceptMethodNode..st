visiting
acceptMethodNode: aMethodNode
	"It looks for the #returnType: pragma to get the return type of the method"
	(aMethodNode pragmas detect: [:each | each selector = #returnType:] ifNone: [nil])
		ifNotNilDo: [:pragma | ^ (self computeTypes: pragma arguments first value) first].
	"^ CVoid"
	^ selfClass