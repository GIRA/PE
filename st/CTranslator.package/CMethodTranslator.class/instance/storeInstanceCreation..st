visiting
storeInstanceCreation: aMetaclass 
"	self halt.
	String streamContents: [:stream |
		stream nextPutAll: 'basicNew'; cr;
			tab; nextPutAll: '<returnType: #(', aMetaclass instanceSide name, ')>'; cr.
		aMetaclass instanceSide instVarNames
			do: [:var |
				stream tab; nextPutAll: var, ' := nil.'; cr.
				]
	]."
	source nextPutAll: (('({1}*)malloc(sizeof({1}))') format: {aMetaclass instanceSide name})