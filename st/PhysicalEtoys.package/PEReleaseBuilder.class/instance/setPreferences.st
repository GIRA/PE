releasing
setPreferences
	"The language will be configured by default"
	Preferences setPreference: #useLocale toValue: true. 
	"The user won't be able to save the image"
	Preferences setPreference: #eToyFriendly toValue: true.
	"For ScratchClienMorph"
	Preferences setPreference: #allowEtoyUserCustomEvents toValue: true. 
	"We don't ship the changes file"
	Preferences setPreference: #warnIfNoChangesFile toValue: false. 
	"We don't ship the sources file"
	Preferences setPreference: #warnIfNoSourcesFile toValue: false. 