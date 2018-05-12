as yet unclassified
requestDeleteFrom: aBubble

	self run: (aBubble == self identifier
		ifTrue: [PXReplace bubble: self with: self statement]
		ifFalse: [PXReplace bubble: self with: (PXIdentifier value: self identifier name)])