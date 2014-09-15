viewer category filter
validCategories
"Returns valid categories for the Arduino object"
^(self class additionsToViewerCategories collect: [:each| each first])