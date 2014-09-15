actions
power: aNumber 
	"Motor | Port
	A | 0
	B | 1
	C | 2"
	"Power range: -100 100"
	self controlPlugging.
	port setPower: (aNumber rounded min: 100 max: -100)