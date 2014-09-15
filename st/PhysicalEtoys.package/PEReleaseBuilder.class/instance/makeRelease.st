releasing
makeRelease
	"
	This method will configure the image as a Physical Etoys image, 
	and it will save it (make sure to have a backup copy at hand in 
	case the process goes wrong).
	
	Important: Run this method with the image located in the 
	proper directory. See the build instructions here:

		https://github.com/GIRA/Physical-Etoys
	"
	self installPackages;
		downloadAndExtractLocaleFiles;
		copyCrossPlatformFiles;
		copyPlatformSpecificFiles;
		writeReadmeFile;
		writeSplashFile;
		configureUI;
		setPreferences;
		removeProxySetting;
		deleteQuickGuides; "Only if Etoys not included"
		deleteEtoysExamples; "Only if Etoys not included"
		cleanUpTranslations;
		garbageCollect;
		enterMainThenSaveImage