event handling
startDrag: anEvent
	
	self isPoint ifFalse: [^ super startDrag: anEvent].
	
	hasMouseDown := true.
	anEvent hand newMouseFocus: self.
	anEvent hand showTemporaryCursor: Cursor resizeTopLeft