attaching
detach: anArduinoWireMorph 
	| index |
	index := attachmentPoints
				indexOf: anArduinoWireMorph sourceMorph 
				ifAbsent: [attachmentPoints 	
								indexOf: anArduinoWireMorph destinationMorph 
								ifAbsent: [^ self]].
	(self isAttachedAt: index) ifTrue: [
		attachments at: index put: nil.
		self refreshDeviceAttachments] 