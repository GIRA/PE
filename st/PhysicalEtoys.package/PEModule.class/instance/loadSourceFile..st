private
loadSourceFile: fileName
	"Assumes the file is source code. It won't work otherwise"
	| fileIn |
	fileIn := [:fn || ff |
		[ff := self defaultDirectory readOnlyFileNamed: fn.
		ff fileIn]
			on: Error do: [:err | ff ifNotNil: [ff close].
				err pass]].
	[(FileDirectory extensionFor: fileName)
		caseOf: {
			['st'] -> [fileIn value: (self defaultDirectory fullNameFor: fileName)].
			['cs'] -> [fileIn value: (self defaultDirectory fullNameFor: fileName)].
			['mcz'] ->[(self defaultDirectory
						fileNamed: fileName
						do: [:mczFile |
							MCMczReader
								loadVersionStream: mczFile
								fromDirectory: self defaultDirectory])]
			}]
		ensure: [self defaultDirectory deleteFileNamed: fileName]