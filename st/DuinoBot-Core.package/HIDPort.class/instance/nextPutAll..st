input/output
nextPutAll: data
	| buf hid |
	device ifNil: [^ -1].
	hid := HID forThisPlatform.
	buf := #(0 16rB1 0 0 0 0 0 0 0) asByteArray.
	1 to: data size do: [:i |
		buf at: 3 put: (data at: i).
		[hid write: device with: buf]
			on: Error do: [^ -1]].
	^ data size
