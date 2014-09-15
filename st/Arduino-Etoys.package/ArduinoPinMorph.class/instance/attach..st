attaching
attach: aDevice 
	| wire |
	wire := aDevice class newConnectorFromMorph: attachmentPoint toMorph: aDevice attachmentPoint.
	aDevice attach: pin by: wire.
	self move: aDevice