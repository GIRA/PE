utils
read: ptr
	"Assumes a default buffer size of 8 bytes"
	^ self read: ptr into: (ByteArray new: 8)