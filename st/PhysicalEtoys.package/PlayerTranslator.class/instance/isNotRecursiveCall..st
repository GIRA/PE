visiting
isNotRecursiveCall: aMessageNode
	^ (self asLegalName: aMessageNode selector) ~= aMessageNode methodNode selector