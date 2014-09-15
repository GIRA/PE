send/receive
setMailBox: aNumber 
	self costume renderedMorph setProperty: #mailBox toValue: aNumber - 1 \\ 10 + 1