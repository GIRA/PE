send/receive
getMailBox
	^ self costume renderedMorph valueOfProperty: #mailBox ifAbsent: [1]