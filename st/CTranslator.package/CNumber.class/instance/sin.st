c-math functions
sin
	<returnType: #(CFloat)>
	<tempTypes: #(CFloat CFloat CFloat CFloat)>
	| sum delta self2 i |
	sum := self.
	delta := self.
	self2 := 0 - (self * self).
	i := 2.
	[delta > 0.000000000001]	 whileTrue: [
		"once"
		delta := (delta * self2) / (i * (i + 1)).
		i := i + 2.
		sum := sum + delta.
		"twice"
		delta := (delta * self2) / (i * (i + 1)).
		i := i + 2.
		sum := sum + delta].
	^ sum