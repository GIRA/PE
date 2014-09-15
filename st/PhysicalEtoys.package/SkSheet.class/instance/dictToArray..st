planning
dictToArray: aDictionary 
	" 
	(self new dictToArray: (Dictionary new  
	at: 1@2 put: (Set new addAll: {2@2. 3@2});
	at: 1@1 put: (Set new addAll: {3@1. 2@1});  
	yourself)) = {{1@1. 2@1. 3@1}.{1@2. 2@2. 3@2}} 
	"
	| set line |
	^ ((aDictionary keys asSortedCollection: self sortBlock)
		collect: [:key | 
			line _ OrderedCollection new.
			line add: key.
			set _ aDictionary at: key.
			line
				addAll: (set asSortedCollection: self sortBlock).
			line asArray]) asArray