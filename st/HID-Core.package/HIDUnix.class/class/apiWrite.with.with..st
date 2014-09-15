api
apiWrite: device with: buffer with: bufferSize
"int  HID_API_EXPORT HID_API_CALL hid_write(hid_device *device, const unsigned char *data, size_t length);"
	<apicall: long 'hid_write' (long char* ulong) module: 'libhidapi'>
	^ self externalCallFailed