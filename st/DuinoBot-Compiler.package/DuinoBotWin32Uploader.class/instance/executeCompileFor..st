as yet unclassified
executeCompileFor: sketchName
	"Do not call this, use #compileSketch:"
	((Smalltalk
			at: #Win32Shell
			ifAbsent: [^ self error: 'FFI not installed' translated]) new
			shellExecute: nil
			lpOperation: 'open'
			lpFile: 'upload.bat'
			lpParameters: sketchName
			lpDirectory: 'Arduino\Sketches'
			nShowCmd: 1)
			<= 32
		ifTrue: [self error: 'System error' translated]