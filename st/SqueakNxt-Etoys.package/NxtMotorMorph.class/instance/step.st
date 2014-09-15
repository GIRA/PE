stepping
step
	"I send #step to super because NxtPluggableDeviceMorph (its superclass)
	controls connections and orientation. Do not remove!"
	super step.
	self isPlugged
		ifFalse: [^ self].
	(automaticBrake and: [(Time millisecondsSince: lastTimeSent) >= 1000])
		ifTrue: [[self float] on: Error do: ["Nothing"]]