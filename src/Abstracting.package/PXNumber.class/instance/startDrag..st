as yet unclassified
startDrag: anEvent

	hasMouseDown := true.
	anEvent hand newMouseFocus: self.
	anEvent hand showTemporaryCursor: Cursor rightArrow