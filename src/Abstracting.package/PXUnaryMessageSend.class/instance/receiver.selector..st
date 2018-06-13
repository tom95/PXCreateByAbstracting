as yet unclassified
receiver: aBubble selector: aSymbol

	self removeAllMorphs.
	self add: aBubble.
	self add: (textEntry := self createTextEntryFor: aSymbol asString)