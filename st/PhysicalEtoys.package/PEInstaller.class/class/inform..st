user interface
inform: aString
	(PopUpMenu labels: 'OK' translated)
		startUpWithCaption: aString
		at: World center
		allowKeyboard: Preferences menuKeyboardControl
		centered: true