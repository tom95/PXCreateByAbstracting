as yet unclassified
mouseMove: anEvent

	| deltaX newNumber |
	deltaX := anEvent endPoint x - anEvent startPoint x.
	newNumber := self data + deltaX.
	
	self changedData: (self data isInteger ifTrue: [newNumber truncated] ifFalse: [newNumber])