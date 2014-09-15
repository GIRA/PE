testing
containsPoint: aPoint
^ (self bounds containsPoint: aPoint) and:
	  [(self imageForm isTransparentAt: aPoint - bounds origin) not]
