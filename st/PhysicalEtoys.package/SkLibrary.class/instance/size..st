accessing
size: aNumber 
	args _ Array new: aNumber.
	args _ args
				collect: [:each | SkValueCell new]