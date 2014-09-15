This is a spreadsheet package in Skeleton.
To open a spreadsheet, try
SkSheet open.


























-- workspace --

*  package building

SkeletonBaseInfo fileOutSar.
SkeletonConnectorsInfo fileOutSar.

* make change set to current project *
self makeChangeSetForThisPackage

* benchmark
MessageTally spyOn: [1000 timesRepeat: [World runStepMethods]]

* It's useful for debug set/unset when old project is hung.
SkGridMorph>>isDebug

* sound initialize *
self createSoundLibFromWav: 'sound\cas.wav' name: 'cassete'
self createSoundLibFromWav: 'sound\cork.wav' name: 'cork'
self createSoundLibFromWav: 'sound\arrow.wav' name: 'arrow'
self createSoundLibFromWav: 'sound\mochi.wav' name: 'mochi'
self createSoundLibFromWav: 'sound\unstick.wav' name: 'unstick'
self createSoundLibFromWav: 'sound\rice.wav' name: 'rice'

* Initialize
Compiler evaluate: self new postscriptText

* stepping list
(World valueOfProperty: #SkSheet) ifNotNilDo: [:set | set asArray]

* for DEMO
TTCFont newTextStyleFromTTFile: 'C:\WINDOWS\Fonts\verdana.ttf'.
TTCFont newTextStyleFromTTFile: 'C:\WINDOWS\Fonts\pala.ttf'

* debug for Babel
Language subclass: #Romaji  	instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'Babel-Kernel'.
Romaji compile: 'name
^ #Romaji'