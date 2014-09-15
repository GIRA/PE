instance creation
new
	"Build instance object"
	^ self isInstance
		ifTrue: [self]
		ifFalse: [SkProxy newFrom: self]