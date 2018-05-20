as yet unclassified
addMessagePart: aString at: aNumber withArgument: aBubble

	| entry |
	entry := self createTextEntryFor: aString.
	messagePartTextEntries add: entry beforeIndex: aNumber.
	
	self addMorph: entry asElementNumber: aNumber * 2.
	aBubble ifNotNil: [
		self addMorph: aBubble asElementNumber: aNumber * 2 + 1].
	^ entry