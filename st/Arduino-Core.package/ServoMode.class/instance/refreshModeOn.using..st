refreshing
refreshModeOn: pinNumber using: anArduinoProtocol
	anArduinoProtocol attachServoToPin: pinNumber;
						digitalPin: pinNumber mode: anArduinoProtocol valueForServoMode.
