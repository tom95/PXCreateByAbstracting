edit actions
remove

	self owner == self containingBlock
		ifTrue: [self delete]
		ifFalse: [(self replaceBy: [PXUnknown new]) focus]