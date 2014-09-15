class initialization
initialize
	"
	self initialize.
	"
	types := Dictionary new.

	types
		at: #DuinoBotCDC
		put: (DuinoBotType
			friendlyNames: #('duinobot 1.x' )
			fCpu: 16000000
			mcu: 'atmega32u4'
			uploadRate: 115200
			firmataRate: 57600
			avrdudeProgrammer: 'avr109').

	types
		at: #'DuinoBot.v1.x.HID'
		put: (DuinoBotType
			friendlyNames: #('duinobot 1.x hid' )
			fCpu: 16000000
			mcu: 'atmega32u4'
			uploadRate: 115200
			firmataRate: 57600
			avrdudeProgrammer: 'avr109')