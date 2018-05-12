as yet unclassified
updateSelector: aSymbol
	|tokens|
	(aSymbol isKeyword and: (self messageSymbol isKeyword not)) ifTrue: [ | unknown | unknown := PXUnknown new. self add: unknown. unknown focus].
	(aSymbol isKeyword not and: (self messageSymbol isKeyword)) ifTrue: [self submorphs last remove].
	"aSymbol isKeyword
		ifTrue: [self addTrailingTextEntry]
		ifFalse: [^ trailingTextEntry ifNotNilDo: [self remove: trailingTextEntry]]."
	tokens := aSymbol findTokens: ':'.
	(tokens size > messagePartTextEntries size)
		ifTrue: [	self addMessagePartTextEntry: (self createTextEntryFor: tokens last in: aSymbol).
				self add: (trailingTextEntry := self createTextEntry)].
	(messagePartTextEntries size > tokens size) ifTrue: [
		self submorphs remove: trailingTextEntry.
		trailingTextEntry := nil.
		self submorphs last remove]
	