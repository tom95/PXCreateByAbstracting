as yet unclassified
do

	| newFocus |
	newFocus := self bubble closestTextEntryBefore: self bubble.
	" if we're a statement within our block, just delete. otherwise replace by unknown "
	self bubble owner = self bubble containingBlock
		ifTrue: [self bubble delete]
		ifFalse: [(self bubble replaceBy: PXUnknown new) focus].
	newFocus takeCursorAtEnd