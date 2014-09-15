accessing
key
	^ [self class statusKeys at: self value]
		on: Error
		do: [#Unknown]