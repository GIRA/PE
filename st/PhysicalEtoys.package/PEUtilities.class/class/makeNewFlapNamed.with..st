flap creation
makeNewFlapNamed: flapName with: anArray 
	"Example:
	PEUtilities makeNewFlapNamed: 'A flap' with: 
	#(
	(RectangleMorph newStandAlone 'A rectangle' '')
	(CircleMorph newStandAlone 'A circle' '')
	)
	"
	| aStrip aFlapTab |
	aStrip := PartsBin
				newPartsBinWithOrientation: #leftToRight
				andColor: (Color blue muchLighter alpha: 0.8)
				from: anArray
				buttonClass: IconicButton.
	aFlapTab := FlapTab new referent: aStrip beSticky.
	aFlapTab
		setName: flapName translated
		edge: #bottom
		color: Color blue muchLighter.
	aFlapTab setBalloonText: aFlapTab balloonTextForFlapsMenu.
	aStrip beFlap: true.
	aStrip extent: self currentWorld width @ 78.
	aStrip
		submorphsDo: [:ea | ea updateImage].
	aFlapTab openInHand