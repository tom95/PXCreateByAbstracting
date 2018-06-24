as yet unclassified
mouseMove: anEvent

	| deltaX |
	self owner isPoint ifTrue: [^ self owner mouseMove: anEvent].
	deltaX := anEvent endPoint x - anEvent startPoint x.
	self changeDelta: deltaX