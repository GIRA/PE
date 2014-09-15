testing
startTestProcess
"Just for testing. Shows in the Transcript the input of all plugged sensors"
testProcess notNil ifTrue: [^self].
testProcess := [[
		10 milliSeconds asDelay wait.
		sensorPorts do: [:port |
			port isBusy ifTrue: [
				[Transcript show: port; nextPut: $:; space; show: port pluggedDevice rawValue; nextPutAll: '      '.] on: Error do: []
				].
			].
		Transcript cr.
		] repeat] forkNamed: 'LegoNxt testProcess'