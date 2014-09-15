send/receive
getConnection
	^ self costume renderedMorph valueOfProperty: #connection ifAbsent: [0]