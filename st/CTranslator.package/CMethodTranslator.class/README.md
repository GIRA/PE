A CMethodTranslator is responsible of translating just a simple method, it doesn't care of much else. If it encounters something it doesn't know how to handle (i.e. an inst var, or a message send to another non-primitive method) it will signal a notification that the sender (usually a CProgramTranslator) will have to handle.

Usage:
====

	CMethodTranslator
		translate: #rounded
		of: CLong
		with: CKit