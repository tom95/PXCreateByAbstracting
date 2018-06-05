as yet unclassified
selectDownFrom: aTextEntry

	| next |
	next := aTextEntry.
	[next owner == self] whileFalse: [next := next owner].
	
	next ~~ aTextEntry
		ifTrue: [next select]
		ifFalse: [self deselect]