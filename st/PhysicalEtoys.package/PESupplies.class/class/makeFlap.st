flap creation
makeFlap
	"
	self makeFlap.
	"
	| aFlapTab anObjectsTool |
	anObjectsTool := self new.
	aFlapTab := SugarSuppliesTab new referent: anObjectsTool beSticky.
	aFlapTab setName: 'Physical Etoys' translated edge: #bottom color: Color gray lighter.
	aFlapTab position: Display width - (aFlapTab width + 22) @ 0.
	aFlapTab setBalloonText: aFlapTab balloonTextForFlapsMenu.
	anObjectsTool extent: self currentWorld width @ 200.
	anObjectsTool beFlap: true.
	anObjectsTool color: Color blue muchLighter.
	anObjectsTool clipSubmorphs: true.
	aFlapTab arrangeToPopOutOnMouseOver: true;
		 useSolidTab;
		 height: 20;
		 openInWorld.
	Flaps addGlobalFlap: aFlapTab.
	self currentWorld addGlobalFlaps