as yet unclassified
insertStatement: aStatement at: aNumber

	| index |
	index := aNumber + (declarations ifNotNil: [1] ifNil: [0]).
	self addMorph: aStatement asElementNumber: index