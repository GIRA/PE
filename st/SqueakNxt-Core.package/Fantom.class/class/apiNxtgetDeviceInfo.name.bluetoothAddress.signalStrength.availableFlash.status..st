api
apiNxtgetDeviceInfo: nxtPtr
name: nameBuffer
bluetoothAddress: btAddressBuffer
signalStrength: signalStrengthBuffer
availableFlash: availableFlash
status: status
	
	<apicall: void 'nFANTOM100_iNXT_getDeviceInfo' (ulong char* byte* byte* byte* FantomStatus*) module: 'fantom.dll'>
	^ status value: 1