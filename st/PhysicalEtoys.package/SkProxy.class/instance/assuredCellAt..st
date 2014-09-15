cell accessing
assuredCellAt: key 
	key class == Point
		ifFalse: [^ rule assuredCellAt: key].
	^ map
		at: key
		ifAbsent: [map
				at: key
				put: (SkProxyCell new
						holderCell: SkValueCell new
						argCell: (rule assuredCellAt: key))]