as yet unclassified
execute
	"Executes the command using FFI"
	| result shell |
	shell := Smalltalk at: #Win32Shell ifAbsent: [^self error: 'FFI doesn''t seem to be installed' translated].
	(FileDirectory default fileExists: 'nbc.exe')
		ifFalse: [^ self error: 'NBC doesn''t seem to be installed' translated].
	((result := shell new 
		shellExecute: nil
		lpOperation:  'open'
		lpFile: 'nbc.exe'
		lpParameters: parameters contents
		lpDirectory: nil
		nShowCmd: 6) <= 32) ifTrue: [self error: 'system error, code: ' translated, result]