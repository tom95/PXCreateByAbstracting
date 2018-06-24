as yet unclassified
method:  aMethod

	method := aMethod.
	self addMorph: aMethod.
	self updateCache.
	self changed.
	
	method when: #startDrag send: #startDrag: to: self