accessing
allIncludes
^ (structs collect: [:each | each allIncludes])
		inject: Set new
		into: [:subTotal :next | subTotal , next]