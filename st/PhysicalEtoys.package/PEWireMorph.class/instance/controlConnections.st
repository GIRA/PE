connection control
controlConnections

"Do not erase, it's very important! It checks that the connections are valid and if they aren't it deletes itself"

(self hasValidClass: self sourceMorph) ifFalse: [self isInWorld ifTrue: [self delete]].
(self hasValidClass: self destinationMorph) ifFalse: [self isInWorld ifTrue: [self delete]].

Cursor normal show.