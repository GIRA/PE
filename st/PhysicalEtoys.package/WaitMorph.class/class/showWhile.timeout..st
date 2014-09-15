showing
showWhile: aBlock timeout: seconds
	| instance process |
	instance := self default
		center: World center;
		openInWorld.
	process := [seconds * 10
		timesRepeat: [instance step.
			World displayWorldSafely.
			(Delay forMilliseconds: instance stepTime) wait]]
				forkNamed: instance asString.
	[Cursor wait showWhile: aBlock] 
			on: Error 
			do: [:err | process terminate.
						instance delete.
						err signal].
	process terminate.
	instance delete.