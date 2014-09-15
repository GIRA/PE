as yet unclassified
myDevice

| sensors strSensors choice |
sensors := NxtSensorMorph allSubclasses asArray.
	strSensors := sensors
				collect: [:each | '  ' , each defaultNameStemForInstances translated , '  '].
	choice := PopUpMenu withCaption: 'Sensor:' translated chooseFrom: strSensors.
	choice = 0
		ifTrue: [^ nil].
	^ (sensors at: choice) new