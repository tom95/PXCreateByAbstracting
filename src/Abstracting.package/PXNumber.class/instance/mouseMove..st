as yet unclassified
mouseMove: anEvent

	| deltaX newNumber |
	deltaX := anEvent endPoint x - anEvent startPoint x.
	newNumber := self value + deltaX.
	
	self value: (self value isInteger ifTrue: [newNumber truncated] ifFalse: [newNumber])