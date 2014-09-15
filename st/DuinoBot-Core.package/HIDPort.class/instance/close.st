connection
close
	[HID forThisPlatform close: device]
		ensure: [device := nil]