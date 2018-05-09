as yet unclassified
mouseUp: anEvent

	hasMouseDown := false.
	assignLine ifNotNil: [
		assignLine delete.
		assignLine :=  nil.
		self clearHighlighted.
		self dropTargetAt: anEvent position do: [:token | self substituteTo: token] ifNone:  []]