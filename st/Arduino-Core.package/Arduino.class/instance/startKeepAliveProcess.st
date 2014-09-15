keeping alive
startKeepAliveProcess
	keepAliveProcess notNil
		ifTrue: [ ^ self ].
	keepAliveProcess := [ 
	[ 
	[ self sendKeepAlive ]
		on: Error
		do: [ 
			(Delay forMilliseconds: 100) wait.
			self terminateAllProcesses.
			SerialPort allInstances do: [ :each | each close ] ].
	(Delay forMilliseconds: self keepAliveTime) wait ] repeat ] forkNamed: 'KeepAlive: ' , self asString