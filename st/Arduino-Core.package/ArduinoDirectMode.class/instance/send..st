sending
send: aByteArray
	self isConnected ifFalse: [^ self].
	"Added a small delay because /dev/ttyACM* devices seem
	to fail when sending a lot of small messages"
	1 milliSecond asDelay wait.
	(port nextPutAll: aByteArray) < 0
		ifTrue: [
			"An error occurred, maybe the board was unplugged.
			Just in case, disconnect"
			self privateDisconnect]