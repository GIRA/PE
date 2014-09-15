I am a Card bar of a rule.

area		always NIL
model		SkRule (maybe SkCard)
origin		Point	a position of label
size			SmallInteger -- It is used when model has no size (it is ugly implementation...)

The morphs area is determined based on area's origin, size, and model's direction.