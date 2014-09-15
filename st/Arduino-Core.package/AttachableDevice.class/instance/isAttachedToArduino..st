attaching
isAttachedToArduino: anArduino 
	^ self isAttached and: [anArduino pins includesAllOf: pins]