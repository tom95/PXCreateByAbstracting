as yet unclassified
indexForAdvance: aNumber

	| advance font |
	advance := 0.
	font := self fontToUse.
	self contents doWithIndex: [:char :index |
		advance := advance + (font widthOf: char).
		advance > aNumber ifTrue: [^ index - 1]]