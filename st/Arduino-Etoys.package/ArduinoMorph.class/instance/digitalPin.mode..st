digital pins
digitalPin: pinNumber mode: aSymbol 
"Using the viewer you can only change output/input modes (if a device is connected it won't let you change it)"
(#(#output #input) includes: (self digitalPinModeAt: pinNumber))
ifFalse: [^self].

	(arduino  digitalPin: pinNumber) mode: (self pinModeFromSymbol: aSymbol)