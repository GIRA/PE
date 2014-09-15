public
open
	| openedWindows aboutWindow |
	openedWindows := SystemWindow
				windowsIn: World
				satisfying: [:w | w label = self label].
	aboutWindow := openedWindows isEmpty
				ifTrue: [self new]
				ifFalse: [openedWindows first].
	aboutWindow expand comeToFront 