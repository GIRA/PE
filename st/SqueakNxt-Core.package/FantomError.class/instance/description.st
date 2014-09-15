exceptionDescription
description
	"Return a textual description of the exception."
	^ self messageText ifNil: [self class name asString]