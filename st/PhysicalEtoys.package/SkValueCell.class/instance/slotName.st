accessing
slotName
	"See Player>>tearOffFancyWatcherFor:"
	| info watcherWording anInterface |
	info _ model slotInfoForGetter: getter.
	info
		ifNil: [anInterface _ Vocabulary eToyVocabulary
						methodInterfaceAt: getter
						ifAbsent: [].
			watcherWording _ anInterface wording]
		ifNotNil: [watcherWording _ Utilities inherentSelectorForGetter: getter].
	^ model tileReferringToSelf bePossessive labelMorph contents , ' ' , watcherWording