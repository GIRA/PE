accessing
delayOfScript: scriptName
 	"To be in accordance with the script tick rate, we put a delay at the end of each task. How long the delay would be?"
	^ (1000 / (self currentPlayer scriptInstantiationForSelector: scriptName) tickingRate) rounded asString
