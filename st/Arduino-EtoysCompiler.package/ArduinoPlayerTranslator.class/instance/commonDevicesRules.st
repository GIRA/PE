accessing-rules
commonDevicesRules
| selfVar booleanGetter booleanSetter getter setter |
selfVar := self variable: 'self'.
booleanGetter := [:node |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		node arguments: {self literal: (self arduinoIndexOf: node receiver)};
			selector: #getBooleanValue:;
			receiver: selfVar].
	super acceptMessageNode: node].
booleanSetter := [:node | 
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		node arguments: {self literal: (self arduinoIndexOf: node receiver)},
							node arguments;
			selector: #setBooleanValue:value:;
			receiver: selfVar].
	super acceptMessageNode: node].
getter := [:node |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		node arguments: {self literal: (self arduinoIndexOf: node receiver)};
			selector: #getValue:;
			receiver: selfVar].
	super acceptMessageNode: node].
setter := [:node | 
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		node arguments: {self literal: (self arduinoIndexOf: node receiver)},
							node arguments;
			selector: #setValue:value:;
			receiver: selfVar].
	super acceptMessageNode: node].
^ {
	"LED"
	#getIsLedOn -> booleanGetter.
	#setIsLedOn: -> booleanSetter.
	"Pushbutton"
	#getIsPressed -> booleanGetter.
	"Switch"
	#getIsOn -> booleanGetter.
	"Tilt switch"
	#getTiltValue -> getter.
	"Photoresistor/Optocoupler"
	#getLightValue -> getter.
	"Potentiometer"
	#getPotentiometerValue -> getter.
	"Thermistor"
	#getTemperatureValue -> getter.
	"Pwm led"
	#setLedValue: -> setter.
	#getLedValue -> getter.
	"Buzzer"
	#setBuzzerValue:  -> setter.
	#getBuzzerValue -> getter.
	"Relay"
	#getIsRelayOpen -> booleanGetter.
	#setIsRelayOpen: -> booleanSetter.
	"Servo"
	#getDegrees -> getter.
	#setDegrees: -> setter.
}