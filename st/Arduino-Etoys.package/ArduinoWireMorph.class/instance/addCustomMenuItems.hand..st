as yet unclassified
addCustomMenuItems: aMenu hand: aHandMorph
	aMenu
		addUpdating: #orthogonalityPhrase target: self action: #toggleOrthogonality.

	self vertices size > 2 ifTrue: [ 
		aMenu add: 'straighten' translated target: self selector: #straighten.
	].