as yet unclassified
requestDeleteFrom: aBubble

	self run: (PXDeleteSelf bubble: ((self submorphs count: #isBubble) = 1 ifTrue: [self] ifFalse: [aBubble]))