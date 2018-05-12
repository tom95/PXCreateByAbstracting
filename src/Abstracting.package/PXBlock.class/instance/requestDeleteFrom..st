as yet unclassified
requestDeleteFrom: aBubble

	(self statements includes: aBubble) ifTrue: [
		self run: (self statements size = 1
			ifTrue: [PXReplace bubble: self with: PXUnknown new]
			ifFalse: [PXDeleteSelf bubble: aBubble])]