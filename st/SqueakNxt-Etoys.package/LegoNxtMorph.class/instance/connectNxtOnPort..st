connection
connectNxtOnPort: aString 
	"If connection is successfull it makes the nxt beep"
	nxt isConnected
		ifTrue: [^ self].
	[[WaitMorph showWhile: [nxt connectOnPort: aString]]
		on: BusyPort
		do: ["Nothing"]]
		on: Error
		do: [:err | self inform: err description].
	nxt isConnected
		ifTrue: [nxt beep]