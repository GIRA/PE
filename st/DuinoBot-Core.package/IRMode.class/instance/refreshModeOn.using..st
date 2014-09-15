as yet unclassified
refreshModeOn: pinNumber using: anArduinoProtocol
	anArduinoProtocol
		digitalPin: pinNumber mode: 4;
		attachIRReceiverToPin: pinNumber