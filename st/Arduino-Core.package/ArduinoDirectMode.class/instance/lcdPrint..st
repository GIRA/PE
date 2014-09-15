lcd
lcdPrint: char
	self send: {self asCommand: self class rqLcdPrint.
				self asArgument: (char asciiValue bitAnd: 2r01111111).
				self asArgument: (char asciiValue bitAnd: 2r10000000) >> 7} asByteArray.
