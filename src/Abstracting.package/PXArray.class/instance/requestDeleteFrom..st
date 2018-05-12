as yet unclassified
requestDeleteFrom: aBubble

	self submorphCount = 3
		ifTrue: [self run: (PXReplace bubble: self with: PXUnknown new)]
		ifFalse: [self run: (PXDeleteSelf bubble: aBubble)]