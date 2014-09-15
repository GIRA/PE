input/output
readByteArray
	| result |
	device ifNil: [^ #() asByteArray].
	result := OrderedCollection new.
	1 to: 32 do: [:i || data |
		data := HID forThisPlatform read: device.
		(data size > 2
		and: [data first = 16rB1
		and: [data second ~= 0]])
			ifTrue: [result addAll: data allButFirst]].
	^ result asByteArray