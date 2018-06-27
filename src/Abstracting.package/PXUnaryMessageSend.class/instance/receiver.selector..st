as yet unclassified
receiver: aBubble selector: aSymbol

	isInCascade := aBubble isNil.
	
	self removeAllMorphs.
	isInCascade ifFalse: [self add: aBubble].
	self add: (textEntry := self createTextEntryFor: aSymbol asString).
	
	self setupCompletionFor: textEntry