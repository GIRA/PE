attaching
attach: aPin by: anArduinoWireMorph 
	| index |
	index := attachmentPoints indexOf: anArduinoWireMorph sourceMorph ifAbsent: [1].
	attachments at: index put: aPin.
	self refreshDeviceAttachments

