lcd
lcdConfigureOnPins: aByteArray  width:aNumber length: aNumber2

(aByteArray size =6)
ifTrue:[self send: {self asCommand: self class rqLcdConfigure.
				self asArgument: (aByteArray first ).
				self asArgument: (aByteArray second ).
				self asArgument: (aByteArray third ).
				self asArgument: (aByteArray fourth).
				self asArgument: (aByteArray fifth).
				self asArgument: (aByteArray sixth).
				self asArgument: aNumber.
				self asArgument: aNumber2} asByteArray]
	ifFalse: [self error: 'Invalid pins' translated]






	