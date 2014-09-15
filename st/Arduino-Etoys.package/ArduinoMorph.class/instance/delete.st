initialize-release
delete
self isConnected ifTrue: [self disconnect].
super delete.