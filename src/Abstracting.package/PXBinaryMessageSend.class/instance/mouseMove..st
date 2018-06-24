event handling
mouseMove: anEvent

	| delta |
	self isPoint ifFalse: [ ^ super mouseMove: anEvent].
	delta := anEvent endPoint - anEvent startPoint.
	self firstMessagePart changeDelta: delta x.
	self secondMessagePart changeDelta: delta y