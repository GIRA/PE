api
apiRead: device with: buffer with: bufferSize
"int  HID_API_EXPORT HID_API_CALL hid_read(hid_device *device, unsigned char *data, size_t length);"
	<apicall: long 'hid_read' (long char* ulong) module: 'hidapi.dll'>
	^ self externalCallFailed