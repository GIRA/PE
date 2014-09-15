stepping
doNextStep
	[self perform: stepMode.
	currentStep := currentStep + (isGoingForward ifTrue: [1] ifFalse: [-1])] 
		on: Error
		do: [200 milliSeconds asDelay wait]