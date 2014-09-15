*physicaletoys-compilersupport
buttonRowForEditor
	"Answer a row of buttons that comprise the header at the top of the Scriptor"

	| aRow aString aStatusMorph aButton aTile aMorph goldBoxButton aBox |
	aRow _ AlignmentMorph newRow color: ScriptingSystem baseColor; layoutInset: 1.
	aRow hResizing: #spaceFill.
	aRow vResizing: #shrinkWrap.
	self addDismissButtonTo: aRow.
	aRow addTransparentSpacerOfSize: 9.

	"Player's name"
	aString _ playerScripted externalName.
	aMorph _ StringMorph contents: aString font: ScriptingSystem fontForTiles.
	aMorph setNameTo: 'title'.
	aRow addMorphBack: aMorph.
	aRow addTransparentSpacerOfSize: 6.

	"Script's name"
	aBox := AlignmentMorph newRow.
	aBox hResizing: #shrinkWrap; vResizing: #shrinkWrap.
	aBox color: (Color r: 0.839 g: 1.0 b: 0.806).
	aBox borderWidth: 1.
	aBox  borderColor: (Color r: 0.645 g: 0.774 b: 0.613).
	aButton _ UpdatingStringMorph new.
	aButton useStringFormat;
		target:  self;
		getSelector: #scriptTitle;
		setNameTo: 'script name';
		font: ScriptingSystem fontForNameEditingInScriptor;
		putSelector: #setScriptNameTo:;
		setProperty: #okToTextEdit toValue: true;
		step;
		yourself.
	aBox addMorph: aButton.
	aRow addMorphBack: aBox.
	aBox setBalloonText: 'Click here to edit the name of the script.' translated.
	"aRow addTransparentSpacerOfSize: 9."
	aRow addVariableTransparentSpacer.

	"Try It button"
	(self playerScripted isUsingCompiledMode or: [self hasParameter]) ifFalse:
		[aRow addMorphBack:
			((ThreePhaseButtonMorph
				labelSymbol: #TryIt
				target: self
				actionSelector: #tryMe
				arguments: EmptyArray)
				actWhen: #whilePressed;
				balloonTextSelector: #tryMe).
		aRow addTransparentSpacerOfSize: 3].

	"Step button"
	(self playerScripted isUsingCompiledMode or: [self hasParameter]) ifFalse:
		[aRow addMorphBack: (aButton := ThreePhaseButtonMorph
				labelSymbol: #StepMe
				target: self
				actionSelector: #stepMe
				arguments: EmptyArray).
		aButton balloonTextSelector: #stepMe.
		aRow addTransparentSpacerOfSize: 3].

	"Status controller"
	self hasParameter
		ifTrue:
			[aTile _ TypeListTile new choices: Vocabulary typeChoicesForUserVariables dataType: nil.
			aTile addArrows.
			aTile setLiteral: self typeForParameter.
			aRow addMorphBack: aTile.
			aTile borderColor: Color red.
			aTile color: ScriptingSystem uniformTileInteriorColor.
			aTile setBalloonText: 'Drag from here to get a parameter tile' translated.
			aTile addCaretsAsAppropriate: true]
		ifFalse:
			[aRow addMorphBack: (aStatusMorph _ self scriptInstantiation statusControlMorph)].

	"aRow addTransparentSpacerOfSize: 3."
	aRow addVariableTransparentSpacer.

	"Gold-box"
	aRow addMorphBack: (goldBoxButton _ IconicButton new).
	goldBoxButton borderWidth: 0;
			labelGraphic: (ScriptingSystem formAtKey: 'RoundGoldBox'); color: Color transparent; 
			actWhen: #buttonDown;
			target: self;
			actionSelector: #offerGoldBoxMenu;
			shedSelvedge;
			setBalloonText: 'click here to get a palette of useful tiles to use in your script.' translated.
	aRow addTransparentSpacerOfSize: 6@1.

	"Menu Button"
	aButton _ self menuButton.
	aButton actionSelector: #offerScriptorMenu.
	aRow addMorphBack: aButton.

	(playerScripted existingScriptInstantiationForSelector: scriptName)
		ifNotNilDo:
			[:inst | inst updateStatusMorph: aStatusMorph].
	^ aRow