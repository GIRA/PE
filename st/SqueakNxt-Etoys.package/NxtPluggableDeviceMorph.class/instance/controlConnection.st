stepping
controlConnection
	"Very important! It checks that we can only send messages to the nxt if we are plugged to the brick"
	device isPlugged
		ifFalse: [^ self].
	connector isNil
		ifTrue: [^ self unplug].
	connector isPlugged
		ifFalse: [^ self unplug]