accessing
source
	^ String streamContents: [:source |
		source nextPutAll: 'class ';
				nextPutAll: self className;
				nextPutAll: ' {'; cr.
		source nextPutAll: 'private:'; cr; cr.
		variables do: [:var |
			source nextPutAll: var source; nextPut: $;; cr].
		source cr; nextPutAll: 'public:'; cr; cr.
		methods do: [:method |
			source nextPutAll: method source; cr]
			separatedBy: [source cr].
		source nextPutAll: '};']