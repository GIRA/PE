viewer category filter
validCategories
	"The sensors have a generic category with raw, normalized and scaled values
	and a specific for each sensor type.
	This method makes sure we accept both of them."
	^super validCategories,
		(NxtSensorMorph class selectors asArray
			select: [:sel | sel beginsWith: #additionsToViewerCategory]
			thenCollect: [:sel | (NxtSensorMorph perform: sel) first])