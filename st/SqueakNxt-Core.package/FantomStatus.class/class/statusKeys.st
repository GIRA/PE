constants
statusKeys
	^ {
		0 -> #Success .
		1 -> #FantomDriverNotInstalled.
		-142005 -> #PairingFailed .
		-142006 -> #BluetoothSearchFailed .
		-142007 -> #SystemLibraryNotFound .
		-142008 -> #UnpairingFailed .
		-142009 -> #InvalidFilename .
		-142010 -> #InvalidIteratorDereference .
		-142011 -> #LockOperationFailed .
		-142012 -> #SizeUnknown .
		-142013 -> #DuplicateOpen .
		-142014 -> #EmptyFile .
		-142015 -> #FirmwareDownloadFailed .
		-142016 -> #PortNotFound .
		-142017 -> #NoMoreItemsFound .
		-142018 -> #TooManyUnconfiguredDevices .
		-142019 -> #CommandMismatch .
		-142020 -> #IllegalOperation .
		-142021 -> #BluetoothCacheUpdateFailed .
		-142022 -> #NonNXTDeviceSelected .
		-142023 -> #RetryConnection .
		-142024 -> #PowerCycleNXT .
		-142099 -> #FeatureNotImplemented .
		-142189 -> #FWIllegalHandle .
		-142190 -> #FWIllegalFileName .
		-142191 -> #FWOutOfBounds .
		-142192 -> #FWModuleNotFound .
		-142193 -> #FWFileExists .
		-142194 -> #FWFileIsFull .
		-142195 -> #FWAppendNotPossible .
		-142196 -> #FWNoWriteBuffers .
		-142197 -> #FWFileIsBusy .
		-142198 -> #FWUndefinedError .
		-142199 -> #FWNoLinearSpace .
		-142200 -> #FWHandleAlreadyClosed .
		-142201 -> #FWFileNotFound .
		-142202 -> #FWNotLinearFile .
		-142203 -> #FWEndOfFile .
		-142204 -> #FWEndOfFileExpected .
		-142205 -> #FWNoMoreFiles .
		-142206 -> #FWNoSpace .
		-142207 -> #FWNoMoreHandles .
		-142208 -> #FWUnknownErrorCode .
	} as: Dictionary