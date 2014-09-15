event handling
mouseDownPin: attachmentPointIndex evt: evt morph: attachmentPoint 
	(self isAttachedAt: attachmentPointIndex)
		ifTrue: [^ self].
	(self class newConnector startWiringFrom: attachmentPoint) color: attachmentPoint color