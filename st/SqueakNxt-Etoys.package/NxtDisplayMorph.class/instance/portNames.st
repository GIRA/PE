accessing
portNames
	"Since sending PESerialPort availablePortsForNxt can be a little expensive
	and we send it several times, to avoid delays I made a simple cache and we
	only update the cache if the last time we update it was at least a second ago"
	self flag: #Richo. "Ugly hack"
	(portNamesCache isNil
	or: [(Time millisecondsSince: portNamesLastTimeAsked) > 1000])
		ifTrue: [portNamesCache := PESerialPort availablePortsForNxt allButLast.
			portNamesLastTimeAsked := Time millisecondClockValue].
	^ portNamesCache
	