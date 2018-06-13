as yet unclassified
addMessagePart: aString at: aNumber withArgument: aBubble

	| entry |
	entry := self createTextEntryFor: aString.
	
	self addMorph: entry asElementNumber: aNumber * 2.
	self addMorph: aBubble asElementNumber: aNumber * 2 + 1.
	^ entry