connection
connectOnPort: aString
	| iterator |
	('USB' match: aString) ifFalse: [^ self error: 'Invalid port' translated].
	iterator := Fantom apiCreateNxtIteratorSearchBluetooth: 0 for: 0 status: status.
	status check.
	nxt := Fantom apiNxtIteratorGetNxt: iterator status: status.
	status check.
	Fantom apiDestroyNxtIterator: iterator status: status
