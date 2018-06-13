as yet unclassified
do

	| newEntry |
	newEntry := self bubble addMessagePart: self newText at: self index withArgument: PXUnknown new.
	newEntry focus; placeCursorAt: self newText size