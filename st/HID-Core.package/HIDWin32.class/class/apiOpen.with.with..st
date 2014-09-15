api
apiOpen: vendorId with: productId with: serialNumber
"HID_API_EXPORT hid_device * HID_API_CALL hid_open(unsigned short vendor_id, unsigned short product_id, const wchar_t *serial_number);"
	<apicall: long 'hid_open' (ushort ushort short*) module: 'hidapi.dll'>
	^ self externalCallFailed