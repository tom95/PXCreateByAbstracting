as yet unclassified
receiver: aBubble selector: aSymbol argument: anotherBubble

	self removeAllMorphs.
	
	isInCascade := aBubble isNil.
	
	isInCascade ifFalse: [self add: aBubble].
	self add: (textEntry := self createTextEntryFor: aSymbol asString).
	
	argument ifNotNilDo: #delete.
	self add: (argument := anotherBubble)