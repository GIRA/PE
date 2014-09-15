constants
statusDescriptions
	^ {
		#Success -> 'No error' translated.
		#FantomDriverNotInstalled -> 'The fantom driver doesn''t seem to be installed.
Please download it from LEGO website and install it before trying again.'  translated.
		#PairingFailed -> 'Bluetooth pairing operation failed.' translated.
		#BluetoothSearchFailed -> 'Bluetooth search failed.' translated.
		#SystemLibraryNotFound -> 'System library not found.' translated.
		#UnpairingFailed -> 'Bluetooth unpairing operation failed.' translated.
		#InvalidFilename -> 'Invalid filename specified.' translated.
		#InvalidIteratorDereference -> 'Invalid iterator dereference.' translated.
		#LockOperationFailed -> 'Resource locking operation failed.' translated.
		#SizeUnknown -> 'Could not determine the requested size.' translated.
		#DuplicateOpen -> 'Cannot open two objects at once.' translated.
		#EmptyFile -> 'File is empty.' translated.
		#FirmwareDownloadFailed -> 'Firmware download failed.' translated.
		#PortNotFound -> 'Could not locate virtual serial port.' translated.
		#NoMoreItemsFound -> 'No more items found.' translated.
		#TooManyUnconfiguredDevices -> 'Too many unconfigured devices.' translated.
		#CommandMismatch -> 'Command mismatch in firmware response.' translated.
		#IllegalOperation -> 'Illegal operation.' translated.
		#BluetoothCacheUpdateFailed -> 'Could not update local Bluetooth cache with new name.' translated.
		#NonNXTDeviceSelected -> 'Selected device is not an NXT.' translated.
		#RetryConnection -> 'Communication error.  Retry the operation.' translated.
		#PowerCycleNXT -> 'Could not connect to NXT.  Turn the NXT off and then back on before continuing.' translated.
		#FeatureNotImplemented -> 'This feature is not yet implemented.' translated.
		#FWIllegalHandle -> 'Firmware reported an illegal handle.' translated.
		#FWIllegalFileName -> 'Firmware reported an illegal file name.' translated.
		#FWOutOfBounds -> 'Firmware reported an out of bounds reference.' translated.
		#FWModuleNotFound -> 'Firmware could not find module.' translated.
		#FWFileExists -> 'Firmware reported that the file already exists.' translated.
		#FWFileIsFull -> 'Firmware reported that the file is full.' translated.
		#FWAppendNotPossible -> 'Firmware reported the append operation is not possible.' translated.
		#FWNoWriteBuffers -> 'Firmware has no write buffers available.' translated.
		#FWFileIsBusy -> 'Firmware reported that file is busy.' translated.
		#FWUndefinedError -> 'Firmware reported the undefined error.' translated.
		#FWNoLinearSpace -> 'Firmware reported that no linear space is available.' translated.
		#FWHandleAlreadyClosed -> 'Firmware reported that handle has already been closed.' translated.
		#FWFileNotFound -> 'Firmware could not find file.' translated.
		#FWNotLinearFile -> 'Firmware reported that the requested file is not linear.' translated.
		#FWEndOfFile -> 'Firmware reached the end of the file.' translated.
		#FWEndOfFileExpected -> 'Firmware expected an end of file.' translated.
		#FWNoMoreFiles -> 'Firmware cannot handle more files.' translated.
		#FWNoSpace -> 'Firmware reported the NXT is out of space.' translated.
		#FWNoMoreHandles -> 'Firmware could not create a handle.' translated.
		#FWUnknownErrorCode -> 'Firmware reported an unknown error code.' translated.
	} as: Dictionary