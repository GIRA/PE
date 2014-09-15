as yet unclassified
main
	| q |
	<tempTypes: #(CProgram4)>
	self hello.
	p := CProgram4 new.
	p var: 5.
	q := p.
	self printf: '%d\n' value: p var.
	self printf: '%d\n' value: q var.
	p var: 6.
	self printf: '%d\n' value: p var.
	self printf: '%d\n' value: q var.
	self system: 'PAUSE'