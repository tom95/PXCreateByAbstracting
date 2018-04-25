as yet unclassified
mouseDown: anEvent

	| advance |
	advance := (anEvent position - self position) x.
	self cursorIndex: (self indexForAdvance: advance).
	self markActive