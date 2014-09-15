accessing
basic: aColor 
	| border |
	basic _ aColor.
	label _ aColor luminance > 0.9
				ifTrue: [aColor alpha: aColor alpha]
				ifFalse: [Color
						h: aColor hue
						s: aColor saturation * 0.5
						v: aColor brightness
						alpha: aColor alpha * 0.7].
	base _ aColor luminance > 0.9
				ifTrue: [Color
						h: aColor hue
						s: 0.1
						v: aColor brightness - 0.05
						alpha: aColor alpha]
				ifFalse: [Color
						h: aColor hue
						s: 0.08
						v: (aColor brightness * 2 max: 0.8)
						alpha: aColor alpha].
	border _ aColor luminance > 0.9
				ifTrue: [Color
						h: aColor hue
						s: aColor saturation * 0.5
						v: aColor brightness - 0.2]
				ifFalse: [Color
						h: aColor hue
						s: aColor saturation * 0.5
						v: aColor brightness].
	borderStyle _ BorderStyle color: border width: 1.
	selected _ aColor luminance > 0.95
				ifTrue: [aColor]
				ifFalse: [Color
						h: base hue
						s: base saturation
						v: base brightness - 0.1].
	selectedBorderStyle _ BorderStyle color: border lighter width: 1.
	plug _ base darker