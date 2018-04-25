as yet unclassified
previousCursorDestination

	| token |
	token := self.
	^ [token := token submorphBefore] doWhileTrue: [token notNil and: [token wantsCursor not]]