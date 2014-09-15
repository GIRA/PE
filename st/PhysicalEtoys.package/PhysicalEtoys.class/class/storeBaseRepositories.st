class initialization
storeBaseRepositories
	"From now on, every repository added will be considered a part of Physical Etoys"
	baseRepositories := Set new.
	PackageInfo allPackages
		collect: [:pkgInfo | MCPackage named: pkgInfo packageName]
		thenDo: [:pkg |
			pkg name = 'PhysicalEtoys'
				ifFalse: [baseRepositories addAll: (pkg workingCopy repositoryGroup repositories
								copyWithout: MCCacheRepository default)]]