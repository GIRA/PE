attaching
isAttachedTo: anArduino 
	^ self isAttached and: [anArduino pins includesAllOf: pins]