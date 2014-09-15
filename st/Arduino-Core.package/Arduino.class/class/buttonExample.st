examples
buttonExample
	"
	This example requires a button attached to the digital pin 9.
	It creates a TextMorph that shows if the button is pressed..
	
	self buttonExample.
	"
	
	| arduino port button textMorph process buttonMorph |
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

	"Create a button and attach it to pin 9"
	button := EButton new.
	button attach: (arduino digitalPin: 9).
	
	"Create an arrow to show potentiometer value"
	textMorph := TextMorph new contents: 'Not pressed'.
	
	"Create and start a process to update the arrow's rotation"
	process := [[textMorph contents: (button value = 1 ifTrue: ['Pressed'] ifFalse: ['Not pressed']).
				textMorph center: World center.
				10 milliSeconds asDelay wait] repeat]
					forkNamed: 'buttonExample process'.
	
	"Create clean up button"
	buttonMorph := SimpleButtonMorph newWithLabel: 'Clean up'.
	buttonMorph
		actionSelector: #value;
		target: [process terminate.
			arduino disconnect.
			textMorph delete.
			buttonMorph delete].

	"Open morphs in World"
	textMorph openInWorld.
	buttonMorph openInWorld.
	textMorph center: World center.
	buttonMorph center: World center.
	buttonMorph top: textMorph bottom + 10.
	