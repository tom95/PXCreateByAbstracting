as yet unclassified
cursorIndex: aNumber

	cursorIndex := aNumber clampLow: -1 high: self contents size.
	self changed