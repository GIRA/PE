utils
write: ptr with: data
	| bytesWritten |
	bytesWritten := self apiWrite: ptr with: data with: data size.
	bytesWritten = -1
		ifTrue: [^ self error: 'HID writing error' translated].
	^ bytesWritten