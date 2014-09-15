releasing
writeSplashFile
	| form font string fileName |
	form := PhysicalEtoys logo deepCopy.
	font := Preferences standardListFont.
	string := 'version ' , PhysicalEtoys currentVersion.
	form getCanvas
		drawString: string
		at: form boundingBox bottomRight - 2 - ((font widthOfString: string) @ font height)
		font: font
		color: Color gray;
		frameRectangle: form boundingBox
		width: 1
		color: Color black.
	fileName := 'splash.bmp'.
	(FileDirectory default fileExists: fileName)
		ifTrue: [FileDirectory default deleteFileNamed: fileName].
	form writeBMPfileNamed: fileName