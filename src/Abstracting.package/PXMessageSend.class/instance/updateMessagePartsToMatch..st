as yet unclassified
updateMessagePartsToMatch: aSymbol

	| tokens |
	tokens := aSymbol findTokens: ':'.
	aSymbol isKeyword ifTrue: [ tokens := tokens collect: [:t | t , ':']].
	(tokens size > messagePartTextEntries size) ifTrue: [
		trailingTextEntry ifNotNil: [self remove: trailingTextEntry. trailingTextEntry := nil].
		self addMessagePartTextEntry: (self createTextEntryFor: tokens last).
		PXUnknown new addTo: self; focus].
	(messagePartTextEntries size > tokens size) ifTrue: [ self removeLastMessagePart ].
	self addTrailingTextEntry.