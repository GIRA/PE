as yet unclassified
executeUploadFor: sketchName onPort: portName uploadRate: uploadRate mcu: mcu fCpu: fCpu avrdudeProgrammer: programmerId
	"Do not call this, use #uploadSketchNamed:onPort:arduinoType:"
	((Smalltalk
			at: #Win32Shell
			ifAbsent: [^ self error: 'FFI not installed' translated]) new
			shellExecute: nil
			lpOperation: 'open'
			lpFile: 'upload.bat'
			lpParameters: sketchName , ' ' , portName , ' ' , uploadRate asString , ' ' , mcu , ' ' , fCpu asString , ' ' , programmerId
			lpDirectory: 'Arduino\Sketches'
			nShowCmd: 6)
			<= 32
		ifTrue: [self error: 'System error' translated]