showing
show
	StringHolder new
		contents: (String streamContents: [:stream |
			stream
				nextPutAll: 'There seems to be a syntax error in the script you tried to compile. This indicates there might be a bug in the code generator.' translated;
				cr;
				nextPutAll: 'Please send this report to the developers of the software. Thank you.' translated;
				cr; cr; cr;
				nextPutAll: 'Errors:' translated; cr;
				nextPutAll: '*******'; cr;
				nextPutAll: message;
				cr; cr; cr;
				nextPutAll: 'Translated source code:' translated; cr;
				nextPutAll: '***********************'; cr;
				nextPutAll: translatedCode;
				cr; cr; cr;
				nextPutAll: 'Original source code:' translated; cr;
				nextPutAll: '********************'; cr;
				nextPutAll: originalCode]);
		openLabel: 'Syntax Error' translated