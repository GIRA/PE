accessing
extent: newExtent
	form := Form extent: newExtent depth: 32.
	pen := Pen newOnForm: form.
	super extent: newExtent
