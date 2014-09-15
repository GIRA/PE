accessing
description
	^ [self class statusDescriptions
		at: (self class statusKeys at: self value)]
		on: Error
		do: ['Unknown.']