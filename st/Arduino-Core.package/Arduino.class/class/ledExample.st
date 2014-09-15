examples
ledExample
	"
	This example opens an EllipseMorph in the center of the screen that
	lets you turn on/off the a led connected to digital pin 13.
	
	self ledExample.
	"

	| arduino port led ledMorph button |
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

	"Create a led and attach it to pin 13"
	led := LightEmittingDiode new.
	led attach: (arduino digitalPin: 13).

	"Create an EllipseMorph to turn on/off the led"
	ledMorph := EllipseMorph new.
	ledMorph
		on: #mouseUp
		send: #value
		to: [	led value: (led value bitXor: 1).
			ledMorph color: (Color h: led value * 127 s: 1 v: 1)].

	"Create clean up button"
	button := SimpleButtonMorph newWithLabel: 'Clean up'.
	button
		actionSelector: #value;
		target: [arduino disconnect.
			ledMorph delete.
			button delete].

	"Open morphs in World"
	ledMorph openInWorld.
	button openInWorld.
	ledMorph center: World center.
	button center: World center.
	button top: ledMorph bottom + 10.