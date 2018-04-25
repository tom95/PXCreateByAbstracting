as yet unclassified
indexForAdvance: aNumber

	| advance |
	advance := 0.
	self contents doWithIndex: [:char :index |
		advance := advance + (self font widthOf: char).
		advance > aNumber ifTrue: [^ index - 1]]