as yet unclassified
startDrag: anEvent

	assignLine := LineMorph from: anEvent position to: anEvent position color: Color red width: 4.
	hasMouseDown := true.
	anEvent hand newMouseFocus: self.
	assignLine openInWorld