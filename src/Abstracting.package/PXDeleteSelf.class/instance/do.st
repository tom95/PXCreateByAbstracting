as yet unclassified
do

	| newFocus |
	newFocus := self bubble closestTextEntryBefore: self bubble.
	self bubble delete.
	newFocus takeCursorAtEnd