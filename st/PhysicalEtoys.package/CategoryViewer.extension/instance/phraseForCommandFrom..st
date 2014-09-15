*physicaletoys-compilersupport
phraseForCommandFrom: aMethodInterface 
	"Answer a phrase for the non-slot-like command
	represented by aMethodInterface - classic tiles"
	| aRow resultType cmd names argType argTile selfTile aPhrase balloonTextSelector stat inst aDocString universal tileBearingHelp |
	aDocString := aMethodInterface documentation.
	aDocString = 'no help available'
		ifTrue: [aDocString := nil].
	names := scriptedPlayer class namedTileScriptSelectors.
	resultType := aMethodInterface resultType.
	cmd := aMethodInterface selector.
	(universal := scriptedPlayer isUniversalTiles)
		ifTrue: [aPhrase := scriptedPlayer universalTilesForInterface: aMethodInterface]
		ifFalse: [cmd numArgs == 0
				ifTrue: [aPhrase := PhraseTileMorph new vocabulary: self currentVocabulary.
					aPhrase
						setOperator: cmd
						type: resultType
						rcvrType: #Player]
				ifFalse: ["only one arg supported in classic
					tiles, so if this is fed
					with a selector with > 1 arg, results
					will be very strange"
					argType := aMethodInterface typeForArgumentNumber: 1.
					aPhrase := PhraseTileMorph new vocabulary: self currentVocabulary.
					(self isSpecialPatchReceiver: scriptedPlayer and: cmd)
						ifTrue: [aPhrase
								setOperator: cmd
								type: resultType
								rcvrType: #Patch
								argType: argType]
						ifFalse: [aPhrase
								setOperator: cmd
								type: resultType
								rcvrType: #Player
								argType: argType].
					(self isSpecialPatchCase: scriptedPlayer and: cmd)
						ifTrue: [argTile := (Vocabulary vocabularyForType: argType)
										defaultArgumentTileFor: scriptedPlayer]
						ifFalse: [argTile := ScriptingSystem tileForArgType: argType forCommand: cmd].
					(#(#bounce: #wrap: ) includes: cmd)
						ifTrue: ["help for the embattled bj"
							argTile setLiteral: 'silence';
								 updateLiteralLabel].
					argTile position: aPhrase lastSubmorph position.
					aPhrase lastSubmorph addMorph: argTile]].
	(scriptedPlayer slotInfo includesKey: cmd)
		ifTrue: [balloonTextSelector := #userSlot].
	(scriptedPlayer belongsToUniClass
			and: [scriptedPlayer class includesSelector: cmd])
		ifTrue: [aDocString
				ifNil: [aDocString := (scriptedPlayer class userScriptForPlayer: scriptedPlayer selector: cmd) documentation].
			aDocString
				ifNil: [balloonTextSelector := #userScript]].
	tileBearingHelp := universal
				ifTrue: [aPhrase submorphs second]
				ifFalse: [aPhrase operatorTile].
	aDocString
		ifNil: [balloonTextSelector
				ifNil: [tileBearingHelp setProperty: #inherentSelector toValue: cmd.
					balloonTextSelector := nil].
			tileBearingHelp balloonTextSelector: balloonTextSelector]
		ifNotNil: [tileBearingHelp setBalloonText: aDocString].
	aPhrase markAsPartsDonor.
	cmd == #emptyScript
		ifTrue: [aPhrase setProperty: #newPermanentScript toValue: true.
			aPhrase setProperty: #newPermanentPlayer toValue: scriptedPlayer.
			aPhrase submorphs second setBalloonText: 'drag and drop to 
add a new script' translated].
	universal
		ifFalse: [selfTile := self tileForSelf.
			selfTile position: aPhrase firstSubmorph position.
			aPhrase firstSubmorph addMorph: selfTile].
	aRow := ViewerLine newRow.
	aRow elementSymbol: cmd asSymbol.
	aRow
		addMorphBack: (balloonTextSelector = #userSlot
				ifTrue: [self infoButtonFor: cmd]
				ifFalse: [(cmd = #emptyScript
							or: [(names includes: cmd)
									and: [scriptedPlayer isUsingCompiledMode]])
						ifTrue: [ScriptingSystem buttonSpacer]
						ifFalse: [ScriptingSystem tryButtonFor: aPhrase]]).
	aRow addMorphBack: self spacerAfterButton.
	aRow addMorphBack: aPhrase.
	"aPhrase on: #mouseEnter send:
	#addCommandFeedback to: aRow.
	aPhrase on: #mouseLeave send:
	#removeHighlightFeedback to: aRow.
	aPhrase on: #mouseLeaveDragging send:
	#removeHighlightFeedback to: aRow."
	(names includes: cmd)
		ifTrue: [aPhrase userScriptSelector: cmd.
			cmd numArgs == 0
				ifTrue: [aPhrase beTransparent.
					aRow addMorphBack: AlignmentMorph newVariableTransparentSpacer.
					aRow addMorphBack: (stat := (inst := scriptedPlayer scriptInstantiationForSelector: cmd) statusControlMorph).
					inst updateStatusMorph: stat]].
	aRow beSticky; disableDragNDrop.
	^ aRow