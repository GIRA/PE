as yet unclassified
main
	| p |
	<tempTypes: #(CProgram4)>
	p := CProgram4 new.
	p var: 5.
	var := 6.
	self print: p; 
		print: self;
		var: 7;
		print: self;
		system: 'PAUSE'