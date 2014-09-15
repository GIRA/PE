examples
potentiometerExample
	"
	This example requires a potentiometer attached to the analog pin 1.
	It creates an arrow that shows the value of the potentiometer by 
	constantly updating its heading.
	
	self potentiometerExample.
	"
	
	| arduino port potentiometer arrowMorph process button |
	"Just to be sure, disconnect all other instances"
	Arduino instancesConnected do: [:each | each disconnect].
	
	"Create and connect your arduino. Install the firware automatically if not installed already"
	arduino := Arduino new.
	port := (UIManager default request: 'Arduino port:' initialAnswer: 'COM8').
	[arduino connectOnPort: port]
		on: FirmwareNotInstalled
		do: [:ign |
			arduino disconnect.
			ArduinoDirectMode
				uploadOnPort: port
				arduinoType: (ArduinoType
					withFriendlyName: (UIManager default
						chooseFrom: ArduinoType allFriendlyNames
						values: ArduinoType allFriendlyNames
						title: 'Arduino Type:')).
			arduino connectOnPort: port].

	"Create a potentiometer and attach it to pin 1"
	potentiometer := Potentiometer new.
	potentiometer attach: (arduino analogPin: 1).
	
	"Create an arrow to show potentiometer value"
	arrowMorph := PolygonMorph arrowPrototype.
	arrowMorph setVertices: {
		arrowMorph vertices first.
		arrowMorph vertices first + (0@ -100)}.
	
	"Create and start a process to update the arrow's rotation"
	process := [[arrowMorph rotationDegrees: (0.264 * potentiometer value - 135).
				10 milliSeconds asDelay wait] repeat]
					forkNamed: 'potentiometerExample process'.
	
	"Create clean up button"
	button := SimpleButtonMorph newWithLabel: 'Clean up'.
	button
		actionSelector: #value;
		target: [process terminate.
			arduino disconnect.
			arrowMorph delete.
			button delete].

	"Open morphs in World"
	arrowMorph openInWorld.
	button openInWorld.
	arrowMorph center: World center.
	button center: World center.
	button top: arrowMorph bottom + 10.
	