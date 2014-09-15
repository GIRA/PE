*PhysicalEtoys-categories
addCategoryViewer
| likely |
likely := self likelyCategoryToShow.
(self categoriesCurrentlyShowing includes: likely)
	ifFalse: [self addCategoryViewerFor: likely]
