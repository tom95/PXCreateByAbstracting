as yet unclassified
startDrag: anEvent

	self bubble canStartAssign ifFalse: [^ self].

	line := LineMorph from: anEvent position to: anEvent position color: Color red width: 4.
	hasMouseDown := true.
	anEvent hand newMouseFocus: self bubble.
	line openInWorld