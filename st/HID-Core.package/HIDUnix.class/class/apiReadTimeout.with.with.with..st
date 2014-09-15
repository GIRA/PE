api
apiReadTimeout: device with: buffer with: bufferSize with: timeout
"int HID_API_EXPORT HID_API_CALL hid_read_timeout(hid_device *dev, unsigned char *data, size_t length, int milliseconds);"
	<apicall: long 'hid_read_timeout' (long char* ulong long) module: 'libhidapi'>
	^ self externalCallFailed