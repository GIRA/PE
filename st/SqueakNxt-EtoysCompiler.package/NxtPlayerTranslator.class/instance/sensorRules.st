accessing-rules
sensorRules
| selfVar |
selfVar := self variable: 'self'.
^ {
#getIsPressed -> [:node | 
	node arguments: {self nxcIndexOf: node receiver in: sensors};
		selector: #sensorBoolean:;
		receiver: selfVar.
	super acceptMessageNode: node].

#getAudible -> [:node | | copy | "(self sensorType: n) = 8"
	copy := node copy.
	node receiver: copy; 
		arguments: {self literal: SensorType soundDba}; 
		selector: #=.
	copy arguments: {self nxcIndexOf: copy receiver in: sensors}; 
		selector: #sensorType:; 
		receiver: selfVar.
	super acceptMessageNode: node].

#getActive -> [:node | | copy | "(self sensorType: n) = 5"
	copy := node copy.
	node receiver: copy; 
		arguments: {self literal: SensorType lightActive}; 
		selector: #=.
	copy arguments: {self nxcIndexOf: copy receiver in: sensors}; 
		selector: #sensorType:; 
		receiver: selfVar.
	super acceptMessageNode: node].

#getDistanceCm -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: sensors};
		 selector: #sensorUS:;
		receiver: selfVar.
	super acceptMessageNode: node].

#getValue -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: sensors};
			selector: #sensorValue:;
			receiver: selfVar.
	super acceptMessageNode: node].

#setActive: -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: sensors}, node arguments;
		 selector: #setSensorLight:active:;
		receiver: selfVar.
	super acceptMessageNode: node].

#setAudible: -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: sensors. 
						RBMessageNode receiver: node arguments first selector: #not};
		 selector: #setSensorSound:scaling:;
		receiver: selfVar.
	super acceptMessageNode: node].

#getRawValue -> [:node || morph selector |
	"If the receiver is an ultrasonic sensor, we need to 
	send #sensorUS: to get a correct value"
	morph := self morphFor: node receiver name.
	self assert: (sensors includes: morph).
	morph device type = SensorType lowspeed9V
		ifTrue: [selector := #sensorUS:]
		ifFalse: [selector := #sensorRaw:].
	node arguments: {self nxcIndexOf: node receiver in: sensors};
			selector: selector;
			receiver: selfVar.
	super acceptMessageNode: node].

#getNormalizedValue -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: sensors};
			selector: #sensorNormalized:;
			receiver: selfVar.
	super acceptMessageNode: node].

#getScaledValue -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: sensors};
			selector: #sensorScaled:;
			receiver: selfVar.
	super acceptMessageNode: node].
}