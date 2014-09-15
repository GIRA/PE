connectors
newConnectorFromMorph: m1 toMorph: m2 
	^ (ArduinoWireMorph fromMorph: m1 toMorph: m2) 
		 lineColor: Color red;
		 yourself