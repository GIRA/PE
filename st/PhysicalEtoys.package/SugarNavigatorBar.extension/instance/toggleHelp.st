*physicaletoys
toggleHelp
	"Open the help-cards flap, or close it if open."

	| ref f guide |
	Project current isPEProject
		ifTrue: [PEAboutWindow open.
			^ self].
	f _ Flaps globalFlapTab: 'Help' translated.
	f ifNotNil:
		[
		f isInWorld
			ifTrue:
				[ref _ f referent.
				ref ifNotNil: [guide _ ref findDeeplyA: QuickGuideMorph].
				guide ifNotNil: [guide unloadPages].
				Flaps removeFlapTab: f keepInList: false]
			ifFalse:
				[f openInWorld.
				f showFlap.
				ref _ f referent.
				ref ifNotNil: [
					guide _ ref findDeeplyA: QuickGuideMorph].
					guide ifNotNil: [Cursor wait showWhile: [guide initializeIndexPage]]]]
		ifNil:
			[QuickGuideMorph guidePath
				ifNil: [^self inform: 'There are no QuickGuides installed' translated].
			Cursor wait showWhile: [self buildAndOpenHelpFlap]]