file i/o
getWriteMode
^self costume renderedMorph overwrite ifTrue: [#overwrite] ifFalse: [#append]