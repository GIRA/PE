accessing
servoPins
	^ self digitalPins select: [ :each | each mode isServo ]