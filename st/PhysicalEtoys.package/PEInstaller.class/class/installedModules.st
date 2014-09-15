registering
installedModules
	"
	installedModules := nil
	"
	^ installedModules ifNil: [installedModules := OrderedCollection new]