as yet unclassified
requestDeleteFrom: aBubble

	self numArgs = 1
		ifTrue: [self replaceWithNewSend: self messagePartTextEntries first text asSymbol]
		ifFalse: [self run: (PXRemoveMessagePart at: ((self submorphIndexOf: aBubble) - 1 / 2) of: self)]