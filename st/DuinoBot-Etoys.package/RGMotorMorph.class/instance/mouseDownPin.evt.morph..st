as yet unclassified
mouseDownPin: attachmentPointIndex evt: evt morph: attachmentPoint 
	(self isAttachedAt: attachmentPointIndex)
		ifTrue: [^ self].
	self class newConnector startWiringFrom: attachmentPoint