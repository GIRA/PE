api
apiSendDirectCommand: nxtPtr
requireResponse: aBoolean
commandBuffer: commandBuffer
commandBufferSize: commandBufferSize
responseBuffer: responseBuffer
responseBufferSize: responseBufferSize
status: status
	
	<apicall: ulong 'nFANTOM100_iNXT_sendDirectCommand' (ulong ushort char* ulong char* ulong FantomStatus*) module: 'fantom.dll'>
	^ status value: 1