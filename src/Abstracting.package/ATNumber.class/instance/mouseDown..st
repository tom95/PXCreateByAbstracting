event handling
mouseDown: anEvent

	hasMouseDown := true.
	anEvent hand newMouseFocus: self.
	anEvent hand showTemporaryCursor: Cursor rightArrow.
	self cursorIndex: 0.