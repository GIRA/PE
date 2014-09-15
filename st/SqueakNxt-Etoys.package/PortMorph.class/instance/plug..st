plugging
plug: aConectableDeviceMorph 
	| connector |
connector := (SqueakNxtWireMorph fromMorph: self toMorph: aConectableDeviceMorph attachmentPoint).
	aConectableDeviceMorph connector: connector.
	aConectableDeviceMorph device plugOn: port.
	aConectableDeviceMorph moveTo: self defaultPositions