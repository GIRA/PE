as yet unclassified
storeStartTask: aMessageNode
	source nextPutAll: 'StartTask(';
			nextPutAll: (self findTypeOf: aMessageNode receiver) name;
			nextPutAll: aMessageNode arguments first value asCIdentifier;
			nextPutAll: ')'