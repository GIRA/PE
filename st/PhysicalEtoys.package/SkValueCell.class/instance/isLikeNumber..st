support
isLikeNumber: aString
	" 
	self new isLikeNumber: '0'   
	self new isLikeNumber: '-3.141592'   
	self new isLikeNumber: 'word'  
	self new isLikeNumber: '10a'  
	"
	^ aString = ([aString asNumber] on: Error do: [0]) asString