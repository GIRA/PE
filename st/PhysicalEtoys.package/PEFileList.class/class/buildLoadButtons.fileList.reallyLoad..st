as yet unclassified
buildLoadButtons: window fileList: aFileList reallyLoad: aBoolean 
	| aRow  okButton cancelButton |
	okButton := self
				buildButtonText: 'OK' translated
				balloonText: nil
				receiver: aFileList
				selector: (aBoolean
						ifTrue: [#okHitForProjectLoader]
						ifFalse: [#okHit]).
	okButton width: 150.
	cancelButton := self
				buildButtonText: 'Cancel' translated
				balloonText: nil
				receiver: aFileList
				selector: #cancelHit.
	cancelButton width: 150.

	aRow := window addARow: {okButton. cancelButton}.
	aRow color: ScriptingSystem paneColor.
	aRow listCentering: #bottomRight.
	aRow layoutInset: 3 @ 3.
	aRow cellInset: 6 @ 3.
	^ aRow