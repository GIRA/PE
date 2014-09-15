accessing
value: aNumber 
	"aNumber can be 0 - 255"
	self controlAttaching;reconfigureIfNecessary.
	pins first value: (aNumber min: 255 max: 0)