as yet unclassified
moveCursor: aNumber

	self cursorIndex + aNumber < 0 ifTrue: [^ self previousCursorDestination ifNotNil: #takeCursorAtEnd].
	self cursorIndex + aNumber > self contents size ifTrue: [^ self nextCursorDestination ifNotNil: #takeCursorAtStart].
	
	self cursorIndex: self cursorIndex + aNumber