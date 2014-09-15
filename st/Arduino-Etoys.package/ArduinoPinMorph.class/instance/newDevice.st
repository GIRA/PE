attaching
newDevice
	| devices str choice |
	devices := self class devices asSortedCollection: [:a :b| a asString <= b asString].
	devices size = 1 ifTrue: [^devices first new].
	str := devices
				collect: [:each | '  ' , each defaultNameStemForInstances translated  , '  '].
	choice := PopUpMenu withCaption: 'Device:' translated chooseFrom: str.
	choice = 0
		ifTrue: [^ nil].
	^ (devices at: choice) new