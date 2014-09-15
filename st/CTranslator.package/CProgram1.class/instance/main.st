as yet unclassified
main
	| var3 |
	<tempTypes: #(CLong)>
	<returnType: #(CLong)>
	var1 := 3.
	var2 := 4.
	var3 := 17.
	self printf: '%d\n' value: var1 + var2 - var3;
		system: 'PAUSE'.
	^ 42