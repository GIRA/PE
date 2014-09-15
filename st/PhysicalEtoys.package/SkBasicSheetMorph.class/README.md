I am a presentation compornent for showing as 2-D grid.
The contents what I show is depended on a model.
I never access to a cell directly except through model because
a cell doesn't know where he locates. Basically, Position information is
only in model.

cellArea		Rectangle -- the area of cells for drawing. Actual size of table is cellArea extent.
model		SkSheet --
