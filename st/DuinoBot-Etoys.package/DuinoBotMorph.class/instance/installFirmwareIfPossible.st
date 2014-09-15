installing firmware
installFirmwareIfPossible
"If the DuinoBot-Compiler package is found in the image it will try to install DuinoBotFirmware and it will show a progress bar while doing so"
	Smalltalk 
		at: #DuinoBotUploader
		ifAbsent: [^self inform: 'The DuinoBot firmware does not seem to be installed.' translated].
	(self confirm: 'The DuinoBot firmware does not seem to be installed.
Do you want to install it now?' translated)
		ifFalse: [^ self].
	self disconnect.
	[(PEProgressBar
		label: 'Installing DuinoBot firmware' translated
		subLabel: '(this might take a few seconds)' translated)
		showWhile: [(Smalltalk at: #DuinoBotDirectModeSketch)
							translatedToArduinoC
						uploadOnPort: self portName
						arduinoType: (self typeClass withFriendlyName: boardType)]
		timeout: 60]
		on: (Smalltalk at: #CompilingSketchError)
		do: [^ self inform: 'Installing DuinoBot firmware failed for unknown reasons.
Make sure you selected the correct board type.
IMPORTANT: Unplug and replug your arduino before proceeding' translated].
	1 second asDelay wait. "Just in case"
	self connect;
		inform: 'The DuinoBot firmware was successfully installed.' translated