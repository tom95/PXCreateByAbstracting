as yet unclassified
moveCursor: aNumber

	self cursorIndex: self cursorIndex +aNumber.
	self cursorIndex < 0 ifTrue: [self previousCursorDestination ifNotNil: #takeCursorAtEnd].
	self cursorIndex >= self contents size ifTrue: [self nextCursorDestination ifNotNil: #takeCursorAtStart]