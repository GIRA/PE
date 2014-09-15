private
verifyFor: arduinoType clean: cleanFlag
	"Private! Call #verify or #verifyFor: instead"
	^ [self uploader
		compileSketchNamed: sketch name
		for: arduinoType
		clean: cleanFlag]
		on: CompilingSketchError do: [:err |
			cleanFlag
				ifTrue: [err messageText]
				ifFalse: [self verifyFor: arduinoType clean: true]]