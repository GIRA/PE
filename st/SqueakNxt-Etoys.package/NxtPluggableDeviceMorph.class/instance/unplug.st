initialize-release
unplug
	self isPlugged ifFalse: [^self].
	device unplug