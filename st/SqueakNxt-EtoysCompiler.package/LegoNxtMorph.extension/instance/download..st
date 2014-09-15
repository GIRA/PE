*squeaknxt-etoyscompiler
download: aNxcTranslatedProgram
	| errors |
	[errors := ('USB' match: self portName)
		ifTrue: [aNxcTranslatedProgram downloadUsingUsb]
		ifFalse: [aNxcTranslatedProgram downloadUsingBluetooth: nxt protocol deviceName]]
		on: Error do: [:err | 
			"An error happened when trying to download.
			Just in case, disconnect"
			^ self disconnect;
				inform: err description].
	errors notEmpty
		ifTrue: ["This should *never* happen, but if it does
			it would be good to see the error"
			(PESyntaxError
				message: (errors inject: '' into: [:subTotal :next | 
					subTotal, String tab, next asString, String cr])
				translatedCode: aNxcTranslatedProgram asStringWithLineNumbers
				originalCode: (Smalltalk at: #NxtEtoysProgram) sourceCode)
					show]