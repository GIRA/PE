attaching
attachDevice
"I need to override this method because the order of the pins is changed for the keypad"
	| rows columns |
	rows := (attachments first: 3) reversed.
	columns :=attachments last: 3.
	device setPins: columns , rows