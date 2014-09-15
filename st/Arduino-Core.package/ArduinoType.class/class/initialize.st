class initialization
initialize
	"
self initialize
"

	types := Dictionary new.
	types
		at: #ArduinoDiecimila
		put:
			(ArduinoType
				friendlyNames: #('diecimila w/ atmega168' 'duemilanove w/ atmega168' 'nano w/ atmega168')
				fCpu: 16000000
				mcu: 'atmega168'
				uploadRate: 19200
				firmataRate: 57600).
	types
		at: #ArduinoLilyPad
		put:
			(ArduinoType
				friendlyNames: #('lilypad w/ atmega168')
				fCpu: 8000000
				mcu: 'atmega168'
				uploadRate: 19200
				firmataRate: 57600).
	types
		at: #ArduinoMega
		put:
			(ArduinoType
				friendlyNames: #('mega')
				fCpu: 16000000
				mcu: 'atmega1280'
				uploadRate: 57600
				firmataRate: 57600
				analogPins: (0 to: 15)
				digitalPins: (2 to: 53)).
	types
		at: #ArduinoBT
		put:
			(ArduinoType
				friendlyNames: #('bluetooth')
				fCpu: 16000000
				mcu: 'atmega168'
				uploadRate: 19200
				firmataRate: 57600).
	types
		at: #ArduinoATmega8
		put:
			(ArduinoType
				friendlyNames: #('ng or older w/ atmega8')
				fCpu: 16000000
				mcu: 'atmega8'
				uploadRate: 19200
				firmataRate: 115200).
	types
		at: #ArduinoMini
		put:
			(ArduinoType
				friendlyNames: #('mini')
				fCpu: 16000000
				mcu: 'atmega168'
				uploadRate: 19200
				firmataRate: 57600
				analogPins: (0 to: 5)
				digitalPins: (2 to: 13)).
	types
		at: #ArduinoATmega168
		put:
			(ArduinoType
				friendlyNames: #('ng or older w/ atmega168')
				fCpu: 16000000
				mcu: 'atmega168'
				uploadRate: 19200
				firmataRate: 57600).
	types
		at: #ArduinoLilyPad328
		put:
			(ArduinoType
				friendlyNames: #('lilypad w/ atmega328')
				fCpu: 8000000
				mcu: 'atmega328p'
				uploadRate: 57600
				firmataRate: 57600).
	types
		at: #ArduinoATmega328
		put:
			(ArduinoType
				friendlyNames: #('duemilanove w/ atmega328' 'nano w/ atmega328')
				fCpu: 16000000
				mcu: 'atmega328p'
				uploadRate: 57600
				firmataRate: 57600).
	types
		at: #ArduinoPro
		put:
			(ArduinoType
				friendlyNames: #('pro w/ atmega168' 'pro mini w/ atmega168')
				fCpu: 8000000
				mcu: 'atmega168'
				uploadRate: 19200
				firmataRate: 57600).
	types
		at: #ArduinoPro328
		put:
			(ArduinoType
				friendlyNames: #('pro w/ atmega328' 'pro mini w/ atmega328')
				fCpu: 8000000
				mcu: 'atmega328p'
				uploadRate: 57600
				firmataRate: 57600).
	types
		at: #ArduinoMega2560
		put:
			(ArduinoType
				friendlyNames: #('mega 2560')
				fCpu: 16000000
				mcu: 'atmega2560'
				uploadRate: 115200
				firmataRate: 57600
				avrdudeProgrammer: 'stk500v2'
				analogPins: (0 to: 15)
				digitalPins: (2 to: 53)).
	types
		at: #ArduinoUNO
		put:
			(ArduinoType
				friendlyNames: #('uno')
				fCpu: 16000000
				mcu: 'atmega328p'
				uploadRate: 115200
				firmataRate: 57600)