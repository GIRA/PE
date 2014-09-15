private
new
	| aboutWindow |
	aboutWindow := ((AlignmentMorph inAColumn: {
		self physicalEtoysLogo.
		self projectInfo.
		self uaiLogo
	}) openInWindowLabeled: self label)
		setWindowColor: (Color
				r: 0.516
				g: 0.806
				b: 1.0);
		color: Color white.
	^ aboutWindow extent: aboutWindow extent + (60@10)