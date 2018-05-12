edit actions
remove

	self deselect.
	self run: (self owner == self containingBlock
		ifTrue: [PXDeleteSelf bubble: self]
		ifFalse: [PXReplace bubble: self with: PXUnknown new])