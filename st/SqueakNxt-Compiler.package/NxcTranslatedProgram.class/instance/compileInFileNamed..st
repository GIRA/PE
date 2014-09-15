compiling
compileInFileNamed: fileName
	^ NxcCompiler new program: self; compileInFileNamed: fileName