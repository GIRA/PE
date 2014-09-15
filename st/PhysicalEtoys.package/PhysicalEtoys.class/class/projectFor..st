private
projectFor: packageName
	"Richo: This method is needed because I'm stupid enough to name the repositories differently than the packages. Luckily I learned from my mistakes and the projects below are the only ones affected"
	| projectName |
	projectName := packageName upTo: $-.
	^ projectName caseOf: {
		['Wiimote'] -> ['SqueakWiimote'].
		['RoboSapien'] -> ['Sapien'].
	} otherwise: [projectName]