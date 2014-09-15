accessing
pwmPins
	^ self digitalPins select: [ :each | each mode isPwm ]