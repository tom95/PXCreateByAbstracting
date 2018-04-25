as yet unclassified
nextCursorDestination

	| token |
	token := self.
	^ [token := token submorphAfter] doWhileTrue: [token notNil and: [token wantsCursor not]]