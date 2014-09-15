connection
openPort: portName
	('HID' match: portName) ifFalse: [^ self error: 'HID invalid port' translated].
	"First, try to open in console mode:"
	[device := HID forThisPlatform open: 16r3EB with: 16r204F]
		on: HIDError
		do: [| bootPacket |
			"Could not open. Try to open the bootloader"
			[device := HID forThisPlatform open: 16r3EB with: 16r2067]
				on: HIDError do: ["No DuinoBot found" ^ nil].
			"Bootloader found. Send reset command, so it starts the app"
			bootPacket := ByteArray new: 131 withAll: 0.
			bootPacket at: 2 put: 16rFF.
			bootPacket at: 3 put: 16rFF.
			1 second asDelay wait.
			HID forThisPlatform 
				apiWrite: device
				with: bootPacket
				with: bootPacket size.
			HID forThisPlatform close: device.
			1 second asDelay wait.
			[device := HID forThisPlatform open: 16r3EB with: 16r204F]
				on: HIDError do: ["No DuinoBot found" ^ nil]]