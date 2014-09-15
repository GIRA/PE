updating
resolve
	args first contents: (args allButFirst
			collect: [:each | each contents]) sum