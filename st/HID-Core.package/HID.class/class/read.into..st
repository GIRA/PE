utils
read: ptr into: buffer
	| bufSize bytesRead |
	bufSize := buffer size.	
	bytesRead := self apiReadTimeout: ptr with: buffer with: bufSize with: 0.
	^ bytesRead caseOf: {
		[bufSize] -> [buffer].
		[0] -> [#[]].
		[-1] -> [self error: 'HID reading error' translated]
	} otherwise: [buffer copyFrom: 1 to: bytesRead]