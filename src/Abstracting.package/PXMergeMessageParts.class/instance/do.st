as yet unclassified
do

	 | newText |
	newText  := (self bubble messagePartEntryAt: self index - 1) text allButLast, (self bubble messagePartEntryAt: self index) text capitalized.
	(PXRemoveMessagePart at: index of: self bubble) do.
	(PXChangeMessagePart at: index - 1 of: self bubble to: newText) do.
	
	(self bubble messagePartEntryAt: index - 1) takeCursorAtEnd