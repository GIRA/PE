as yet unclassified
projectOnlySelectionMethod: incomingEntries

	| versionsAccepted basicInfoTuple basicName basicVersion |

	"this shows only the latest version of each project"
	versionsAccepted _ Dictionary new.
	incomingEntries do: [ :entry |
		entry isDirectory ifFalse: [
			(#('*.pe' '*.pr' '*.pr.gz' '*.project') anySatisfy: [ :each | each match: entry name]) ifTrue: [
				basicInfoTuple _ Project parseProjectFileName: entry name.
				basicName _ basicInfoTuple first.
				basicVersion _ basicInfoTuple second.
				((versionsAccepted includesKey: basicName) and: 
						[(versionsAccepted at: basicName) first > basicVersion]) ifFalse: [
					versionsAccepted at: basicName put: {basicVersion. entry}
				].
			]
		]
	].
	^versionsAccepted asArray collect: [ :each | each second]