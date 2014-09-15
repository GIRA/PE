*PhysicalEtoys-skeleton-base-pentrail
squareNib: widthInteger 
	"Makes this pen draw with a square nib of the given width."
	self sourceForm: (Form extent: widthInteger @ widthInteger) fillBlack.
	combinationRule
		ifNil: [self combinationRule: Form over
			"a bit faster than paint mode"]