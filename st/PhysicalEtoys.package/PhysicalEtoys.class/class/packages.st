info
packages
	"
	self packages
	"
	^ ((PackageInfo allPackages
		reject: [:pkgInfo || pkg wc |
			pkg := MCPackage named: pkgInfo packageName.
			wc := pkg workingCopy.
			baseRepositories includesAllOf: (wc repositoryGroup repositories 
				copyWithout: MCCacheRepository default)])
		collect: [:each | each name])
			asSortedCollection