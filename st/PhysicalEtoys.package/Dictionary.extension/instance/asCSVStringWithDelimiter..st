*physicaletoys-csv
asCSVStringWithDelimiter: aCharacter 
	| enclose |
	enclose := [:string | '"', (string copyReplaceAll: '"' with: '""'),'"'].
	^ String streamContents: [:stream |
			(self associations 
				asSortedCollection: [:a :b | a key asString < b key asString])
				do: [:assoc || key value |
					key := assoc key.
					value := assoc value.
					stream 
						nextPutAll: (enclose value: key asString);
						nextPut: aCharacter;
						nextPutAll: (enclose value: value asString)]
				separatedBy: [stream cr]]