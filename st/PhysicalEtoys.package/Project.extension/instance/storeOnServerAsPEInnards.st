*physicaletoys
storeOnServerAsPEInnards
	"Save to disk as an Export Segment.  Then put that file on the server I came from, as a new version.  Version is literal piece of file name.  Mime encoded and http encoded."

	| resp newName primaryServerDirectory serverVersionPair localDirectory localVersionPair myVersionNumber warning maxNumber suppliedPassword oldResourceUrl priorWorld myDepth |
	self assureIntegerVersion.

	"Find out what version"
	primaryServerDirectory _ self primaryServerIfNil: [
		(primaryServerDirectory _ PEFileList modalFolderSelectorForProject: self) ifNil: [^self].
		oldResourceUrl _ self resourceUrl.
		primaryServerDirectory == #localOnly ifTrue: [
			self storeNewPrimaryURL: FileDirectory default url.
			nil
		] ifFalse: [
			self storeNewPrimaryURL: primaryServerDirectory downloadUrl.
			primaryServerDirectory
		].
	].

	localDirectory _ self squeakletDirectory.
	[serverVersionPair _ self class mostRecent: self name onServer: primaryServerDirectory]
		on: LoginFailedException do: [:ex |
			primaryServerDirectory user: nil.^ self inform: 'Login failed.'].
	localVersionPair _ self class mostRecent: self name onServer: localDirectory.
	maxNumber _ myVersionNumber _ self currentVersionNumber.

	ProgressNotification signal: '2:versionsDetected'.

	warning _ ''.
	myVersionNumber < serverVersionPair second ifTrue: [
		warning _ warning,'\There are newer version(s) on the server' translated.
		maxNumber _ maxNumber max: serverVersionPair second.
	].
	myVersionNumber < localVersionPair second ifTrue: [
		warning _ warning,'\There are newer version(s) in the local directory' translated.
		maxNumber _ maxNumber max: localVersionPair second.
	].
	"8 Nov 2000 - only check on the first attempt to publish"
	myVersionNumber = 0 ifTrue: [
		warning isEmpty ifFalse: [
			myVersionNumber = 0 ifTrue: [
				warning _ warning,'\THIS PROJECT HAS NEVER BEEN SAVED' translated.
			].
			warning _ 'WARNING' translated, '\Project: ' translated, self name,warning.
			resp _ (PopUpMenu labels: 'Store anyway\Cancel' translated withCRs) startUpWithCaption: 
				(warning, '\Please cancel, rename this project, and see what is there.' translated) withCRs.
				resp ~= 1 ifTrue: [^ nil]
		].
	].
	version _ self bumpVersion: maxNumber.

	oldResourceUrl
		ifNotNil: [self resourceManager adjustToNewServer: self resourceUrl from: oldResourceUrl].

	"write locally - now zipped automatically"
	Display isVirtualScreen ifTrue: [
		myDepth _ displayDepth.
		displayDepth _ OLPCVirtualScreen preferredScreenDepth.
	].
	newName _ self versionedFileName.
	lastSavedAtSeconds _ Time totalSeconds.
	priorWorld _ ActiveWorld.
	self exportSegmentFileName: newName directory: localDirectory withoutInteraction: false.
	ActiveWorld _ priorWorld.
	(localDirectory readOnlyFileNamed: newName) setFileTypeToObject; close.
	Display isVirtualScreen ifTrue: [
		displayDepth _ myDepth.
	].
	
	ProgressNotification signal: '4:localSaveComplete'.	"3 is deep in export logic"

	primaryServerDirectory ifNotNil: [
		suppliedPassword _ ''.
		Preferences passwordsOnPublish ifTrue: [
			suppliedPassword _ FillInTheBlank requestPassword: 'Project password' translated
		].
		[
		primaryServerDirectory
			writeProject: self
			inFileNamed: newName asFileName
			fromDirectory: localDirectory.
		] on: ProjectPasswordNotification do: [ :ex |
			ex resume: (suppliedPassword ifNil: [''])
		].
	].
	ProgressNotification signal: '9999 save complete'.
	
	PEProject storeProjectNamed: newName in: primaryServerDirectory

	"Later, store with same name on secondary servers.  Still can be race conditions.  All machines will go through the server list in the same order."
	"2 to: servers size do: [:aServer | aServer putFile: local named: newName]."
