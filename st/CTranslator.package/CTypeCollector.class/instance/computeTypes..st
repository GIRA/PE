utility
computeTypes: anArray 
	"It reads the array from method tags and returns an array of c types"
	^ Array streamContents: [:outputStream | | inputStream |
	inputStream := anArray readStream.
	[inputStream atEnd]
		whileFalse: [| next |
			next := inputStream next.
			next := Smalltalk at: next ifAbsent: [
				"If the class doesn't match, it must be a message to selfClass"
				(selfClass respondsTo: next) 
					ifTrue: [selfClass perform: next]
					ifFalse: [^ self error: 'Invalid type']].
			outputStream nextPut: next]].
		