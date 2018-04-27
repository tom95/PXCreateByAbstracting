as yet unclassified
activeWord: aWordToken

	self activeWord ifNotNil: [self activeWord markUnactive].
	self deselectAll.
	activeWord := aWordToken