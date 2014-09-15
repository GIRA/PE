private
uploadOnPort: portName arduinoType: arduinoType clean: cleanFlag
	"Private! Call #uploadOnPort: or #uploadOnPort:arduinoType: instead"
	^ [self uploader
		uploadSketchNamed: sketch name
		onPort: portName
		arduinoType: arduinoType
		clean: cleanFlag]
		on: CompilingSketchError do: [:err |
			cleanFlag
				ifTrue: [err signal]
				ifFalse: [self uploadOnPort: portName
							arduinoType: arduinoType
							clean: true]]