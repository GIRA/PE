connection
setNxtPort: aSymbol
	^ self sendMessageToCostume: #portName: with: aSymbol