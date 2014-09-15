as yet unclassified
morphicViewProjectSaverFor: aProject
"
(FileList2 morphicViewProjectSaverFor: Project current) openInWorld
"
	| window aFileList treePane pane2 option treeExtent row p |

	aFileList _ self new directory: ServerDirectory projectDefaultDirectory.
	aFileList dirSelectionBlock: self hideSqueakletDirectoryBlock.
	window := self buildMorphicWindow: aFileList title: 'Publish This Project' translated. 
	window setProperty: #morphicLayerNumber toValue: 11.

	option _ #limitedSuperSwikiDirectoryList.

	World height < 500 ifTrue: [
		treeExtent _ 350@150.
	] ifFalse: [
		treeExtent _ 350@300.
	].

	(treePane _ aFileList morphicDirectoryTreePaneFiltered: option) 
		extent: treeExtent; 
		retractable: false;
		borderWidth: 0.
treePane color: Color transparent.

	row := window addARow: {
			window inAColumn: {(ProjectViewMorph on: aProject) lock}.
			(
				window inAColumn: {
					(pane2 _ window inARow: {window inAColumn: {treePane}}) 
						useRoundedCornersInEtoys; layoutInset: 3
				}
			) layoutInset: 3
		}.
	row color: ScriptingSystem paneColor.
	pane2 borderColor: ScriptingSystem borderColor.
	pane2 borderWidth: 1.
	window addMorphBack: (self buildSaveButtons: window fileList: aFileList).
	window fullBounds.
	window beSticky.
	"This crazy stuff I really cannot figure out how to get the directory selected by default other than this."
	(treePane scroller submorphs detect: [:e |
		p := e complexContents withoutListWrapper pathName.
		(p beginsWith: 'sugar://') or: [p = SecurityManager default untrustedUserDirectory]] ifNone: [nil])
			ifNotNilDo: [:item | WorldState addDeferredUIMessage: [aFileList setSelectedDirectoryTo: item complexContents]].
	aFileList postOpen.
	^ window 