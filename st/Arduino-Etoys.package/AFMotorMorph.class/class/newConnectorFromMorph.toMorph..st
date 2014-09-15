connectors
newConnectorFromMorph: m1 toMorph: m2
^ (ArduinoWireMorph fromMorph: m1 toMorph: m2)
		 lineColor: Color yellow;
		borderColor: Color gray;
		lineWidth: 5;
		 yourself