instance creation
onPort: aString
	^ [self new connectOnPort: aString]
		on: NotConnectedLego do: [:ign | nil]