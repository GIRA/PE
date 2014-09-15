stepping
startReceivingProcess
	receivingProcess notNil
		ifTrue: [^ self].
	receivingProcess := [| delay |
			delay := Delay forMilliseconds: self stepTime.
			[self processInput.
			delay wait] repeat] newProcess name: self asString , ' - Receiving...';
				 priority: Processor userBackgroundPriority;
				 resume 