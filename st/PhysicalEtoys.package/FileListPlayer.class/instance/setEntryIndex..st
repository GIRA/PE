slots
setEntryIndex: aNumber
self getEntriesCount = 0 ifTrue: [^self].
self costume renderedMorph selectedEntryIndex: aNumber - 1 \\ self getEntriesCount + 1