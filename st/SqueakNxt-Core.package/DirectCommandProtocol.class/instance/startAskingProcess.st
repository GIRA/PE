stepping
startAskingProcess
	askingProcess notNil
		ifTrue: [^ self].
	askingProcess := [| delay |
			delay := Delay forMilliseconds: self stepTime.
			[self askForData.
			delay wait] repeat] newProcess name: self asString , ' - Asking...';
				 priority: Processor userBackgroundPriority;
				 resume 