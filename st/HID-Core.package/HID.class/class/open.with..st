utils
open: vid with: pid
	| ptr |
	self apiInit = -1
		ifTrue: [^ self error: 'HID initialization error' translated].
	ptr := self apiOpen: vid with: pid with: nil.
	ptr = 0
		ifTrue: [^ self error: 'HID opening device error' translated].
	^ ptr