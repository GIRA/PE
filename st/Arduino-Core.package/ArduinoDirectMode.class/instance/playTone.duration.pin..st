sound
playTone: frequency duration: duration pin: pin
	| freq dur |
	freq := frequency rounded.
	dur := duration rounded.
	self send: {self asCommand: self class rqPlayTone.
				"pin"
				self asArgument: pin.
				"frequency"
				self asArgument: (freq bitAnd: 2r1111111).
				self asArgument: ((freq bitAnd: 2r11111110000000) >> 7).
				self asArgument: ((freq bitAnd: 2r111111100000000000000) >> 14) .
				"duration"
				self asArgument: (dur bitAnd: 2r1111111).
				self asArgument: ((dur bitAnd: 2r11111110000000) >> 7)} asByteArray