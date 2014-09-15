cell extent change
column: index width: aNumber
	| cell |
	cell := submorphs at: index.
	cell safeExtent: aNumber @ cell height