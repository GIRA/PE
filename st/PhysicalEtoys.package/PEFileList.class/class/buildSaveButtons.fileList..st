as yet unclassified
buildSaveButtons: window fileList: aFileList
	| buttonData buttons aRow |
	buttonData := Preferences enableLocalSave
				ifTrue: [#(#('Save' #okHit 'Save in the place specified above')
							#('Save on local disk only' #saveLocalOnlyHit 'saves in the Squeaklets folder')
							#('Cancel' #cancelHit 'return without saving') )]
				ifFalse: [#(#('Save' #okHit 'Save in the place specified above')
							#('Cancel' #cancelHit 'return without saving') )].
	buttons := buttonData
				collect: [:each | self
						buildButtonText: each first translated
						balloonText: each third translated
						receiver: aFileList
						selector: each second].
	buttons := {Morph new color: Color transparent; width: 50}, buttons.
	aRow := window addARow: buttons.
	aRow color: ScriptingSystem paneColor.
	aRow listCentering: #bottomRight.
	aRow layoutInset: 3 @ 3.
	aRow cellInset: 6 @ 3.
	^ aRow