as yet unclassified
compilePoDir
"
	self compilePoDir.
"
| localeDir poDir osProcess |
poDir := FileDirectory default directoryNamed: 'po'.
(FileDirectory default directoryExists: 'locale') ifFalse: [FileDirectory default createDirectory: 'locale'].
localeDir := FileDirectory default directoryNamed: 'locale'.
osProcess := Smalltalk at: #OSProcess ifAbsent: [^ self error: 'OSProcess is missing'].

'Compiling po files'
    displayProgressAt: Sensor cursorPoint
    from: 1 to: poDir directoryNames size
    during: [:bar | 
    (poDir directoryNames
	collect: [:dirName | poDir directoryNamed: dirName])
	withIndexDo: [:langDir :index | | langID |
		bar value: index.
		langID := langDir localName.
		langDir fileNames
			select: [:each | '*.po' match: each]
			thenDo: [:fileName |
				(localeDir directoryExists: langID)
					ifFalse: [localeDir createDirectory: langID.
						(localeDir directoryNamed: langID) createDirectory: 'LC_MESSAGES'].
				osProcess waitForCommand: 'msgfmt ', langDir pathName, '/', fileName, ' -o ', localeDir pathName , '/', langID,'/LC_MESSAGES/',  (fileName upTo: $.), '.mo -v'.
				]
		]].
 