api
apiCreateNxt: resourceString
status: status
checkFirwareVersion: aBoolean
	
	<apicall: ulong 'nFANTOM100_createNXT' (char* FantomStatus* ushort) module: 'fantom.dll'>
	^ status value: 1