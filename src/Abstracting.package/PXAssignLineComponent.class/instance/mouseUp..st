as yet unclassified
mouseUp: anEvent

	hasMouseDown := false.
	line ifNotNil: [
		line delete.
		line :=  nil.
		self clearHighlighted.
		self dropTargetAt: anEvent position do: [:token | self bubble droppedOn: token] ifNone:  []]