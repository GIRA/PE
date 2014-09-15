lcd
lcdClear
	self send: {self asCommand: self class rqLcdClear} asByteArray.
