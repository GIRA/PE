as yet unclassified
storeInstanceCreation: aMetaclass 
	source nextPutAll: (('(new {1}())') format: {aMetaclass instanceSide name})