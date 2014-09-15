accessing
rootDirectory
	^ ((FileDirectory 
			default 				"/release/build/contents"
			directoryNamed: '..') "/release/build"
			directoryNamed: '..') "/release"
			directoryNamed: '..' 	"/"