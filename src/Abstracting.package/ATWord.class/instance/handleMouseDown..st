event handling
handleMouseDown: anEvent

	| advance |
	advance := (anEvent position - self position) x.
	pressed := true.
	self cursorIndex: (self indexForAdvance: advance)