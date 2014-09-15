accessing
color: aColor
	super color: aColor.
	sheet ifNotNil: [sheet fillStyle: aColor.
		self title color: aColor makeForegroundColor]