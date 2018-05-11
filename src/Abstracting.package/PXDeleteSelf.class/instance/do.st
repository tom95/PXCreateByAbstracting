as yet unclassified
do

	| newFocus |
	newFocus := self bubble previousBubble.
	self bubble delete.
	newFocus focus