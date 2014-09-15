accessing
allPrimitiveRulesSelectors
	^ Array streamContents: [:stream || current |
		"Collect all selectors in the ArduinoSketch protocol..."
		current := ArduinoSketch.
		[stream nextPutAll: current selectors]
			doWhileTrue: [(current := current superclass) ~= CObject superclass].
		"... and in all the primitive types' protocol as well"
		CPrimitiveType withAllSubclassesDo: [:class |
			stream nextPutAll: class selectors]]