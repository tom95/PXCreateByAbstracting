as yet unclassified
updateMessagePartsToMatch: aSymbol

	| tokens |
	tokens := aSymbol asString keywords ifEmpty: [#('')].
	
	" remove left over "
	[messagePartTextEntries size > tokens size] whileTrue: [self removeLastMessagePart].
	
	aSymbol isKeyword
		ifFalse: [
			self removeTrailingTextEntry.
			((aSymbol isUnary or: [aSymbol isEmpty]) and: [self submorphCount > 2]) ifTrue: [self lastSubmorph delete].
			messagePartTextEntries first textKeepCursor: aSymbol asString]
		ifTrue: [
			" update current "
			messagePartTextEntries doWithIndex: [:part :index | part textKeepCursor: (tokens at: index)].
			
			" add missing "
			tokens from: messagePartTextEntries size + 1 to: tokens size do: [:token |
				self addMessagePartTextEntry: (self createTextEntryFor: token).
				self addAndFocusUnknown].
			
			self addTrailingTextEntry]