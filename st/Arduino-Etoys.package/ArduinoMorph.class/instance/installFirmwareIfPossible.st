installing firmware
installFirmwareIfPossible
"If the Arduino-Compiler package is found in the image it will try to install ArduinoFirmware and it will show a progress bar while doing so"
	Smalltalk 
		at: #ArduinoUploader
		ifAbsent: [^self inform: 'The arduino firmware does not seem to be installed.' translated].
	(self confirm: 'The arduino firmware does not seem to be installed.
Do you want to install it now?' translated)
		ifFalse: [^ self].
	self disconnect.
	[(PEProgressBar
		label: 'Installing arduino firmware' translated
		subLabel: '(this might take a few seconds)' translated)
		showWhile: [(Smalltalk at: #ArduinoDirectModeSketch)
							translatedToArduinoC
						uploadOnPort: self portName
						arduinoType: (self typeClass withFriendlyName: boardType)]
		timeout: 60]
			on: (Smalltalk at: #CompilingSketchError)
			do: [^ self inform: 'Installing arduino firmware failed for unknown reasons.
Make sure you selected the correct board type.
IMPORTANT: Unplug and replug your arduino before proceeding' translated].
	self connect;
		inform: 'The arduino firmware was successfully installed.' translated