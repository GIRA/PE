as yet unclassified
loop
	| ir |
	<tempTypes: #(CLong)>
	"ir := self getIRCode: 14."
	(self getIRCode: 14) > 0
		ifTrue: [self playTone: (self getIRCode: 14) * 440 duration: 500 pin: 23]