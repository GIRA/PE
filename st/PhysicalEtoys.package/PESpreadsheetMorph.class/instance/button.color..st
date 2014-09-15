building
button: label color: aColor
	^ SimpleButtonMorph new
		label: label;
		borderColor: aColor;
		color: (aColor lighter alpha: 0.5).