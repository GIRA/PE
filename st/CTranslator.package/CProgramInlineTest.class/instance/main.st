as yet unclassified
main
	| var1 var2 |
	<tempTypes: #(CLong CUnsignedLong)>
	var2 := 1.
	var1 := var2 * 3.
	self pause.
	self prueba: var1 * var2.
	var1 := 5.
	self prueba: var2 * var1.
	^ 5