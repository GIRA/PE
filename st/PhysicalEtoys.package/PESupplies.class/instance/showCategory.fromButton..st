categories
showCategory: aCategoryName fromButton: aButton 
	"Project items from the given category into my lower pane"
	| quads |
	self partsBin removeAllMorphs.
	Cursor wait
		showWhile: [quads := OrderedCollection new.
			Morph withAllSubclasses
				do: [:aClass | aClass theNonMetaClass
						addPartsDescriptorQuadsTo: quads
						if: [:aDescription | aDescription categories includes: aCategoryName]].
			quads := quads
						asSortedCollection: [:q1 :q2 | q1 third <= q2 third].
			self installQuads: quads fromButton: aButton	]