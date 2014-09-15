as yet unclassified
devices
	"Hack to add the IR receiver only to DuinoBot pins"
	self flag: #Richo.
	^ (super devices replaceAll: PushButtonMorph with: RGButtonMorph)
		, {RGIRReceiverMorph}