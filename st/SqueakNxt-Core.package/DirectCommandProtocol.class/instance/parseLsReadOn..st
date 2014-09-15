receiving
parseLsReadOn: data
	lsBytesRead at: lsCurrentPort + 1 put: (data at: 6) .
	lsRxData at: lsCurrentPort + 1 put: (data at: 7)  + ((data at: 8)  * 256).