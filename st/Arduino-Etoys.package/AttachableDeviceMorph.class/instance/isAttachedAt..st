attaching
isAttachedAt: index
	"Note: This doesn't test if the device is attached at the pin number. Instead, it tests if it is connected (in the morph sense) via the attachment at the given index.
	DO NOT CONFUSE!"

	^(attachments at: index) notNil