as yet unclassified
changeCurrentDirectoryOf: osProcess to: pathString
	"Change current directory. We can't send #chDir: directly to osProcess
	because if it fails it shows an annoying error message to the user"
	| realPath result |
	realPath := osProcess processAccessor realpath: pathString.
	realPath ifNil: [realPath := pathString].
	result := osProcess processAccessor chDir: realPath.
	result isNil
		ifTrue:
			[(osProcess environmentAt: #PWD)
				ifNotNil:
					[osProcess environmentAt: #PWD put: realPath]]
		ifFalse: ["log message"].