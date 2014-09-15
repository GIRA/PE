as yet unclassified
modalFolderSelectorForProject: aProject
"
FileList2 modalFolderSelectorForProject: Project current
"
	| window fileModel w |

	window _ self morphicViewProjectSaverFor: aProject.
	fileModel _ window valueOfProperty: #FileList.
	w _ self currentWorld.
	window position: w topLeft + (w extent - window extent // 2).
	w addMorphInLayer: window.
	w startSteppingSubmorphsOf: window.
	[window world notNil] whileTrue: [
		window outermostWorldMorph doOneCycle.
	].
	^fileModel getSelectedDirectory withoutListWrapper