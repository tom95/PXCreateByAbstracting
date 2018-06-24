as yet unclassified
startDrag: anEvent

	self owner isPoint ifTrue: [^ self owner startDrag: anEvent].
	hasMouseDown := true.
	anEvent hand newMouseFocus: self.
	anEvent hand showTemporaryCursor: Cursor resizeRight