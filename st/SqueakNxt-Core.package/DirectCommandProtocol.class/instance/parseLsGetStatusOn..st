receiving
parseLsGetStatusOn: data
	lsBytesReady at: lsCurrentPort + 1 put: (data at: 6) 