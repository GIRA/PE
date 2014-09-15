utils
close: ptr
	self apiClose: ptr.
	self apiExit = -1
		ifTrue: [^ self error: 'HID finalization error' translated]
	