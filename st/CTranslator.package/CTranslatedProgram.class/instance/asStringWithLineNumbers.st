printing
asStringWithLineNumbers
	| nDigits print |
	nDigits := self asString lineCount asString size.
	print := [:n || result |
		result := n printString.
		(nDigits - result size) timesRepeat: [result := '0', result].
		result].
	^ String streamContents: [:stream || count |
		count := 1.
		self asString linesDo: [:line |
			stream 
				nextPutAll: (print value: count), '.';
				tab; nextPut: $|; tab;
				nextPutAll: line; cr.
			count := count + 1]]