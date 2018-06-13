as yet unclassified
do

	 | newText |
	newText  := (self bubble messagePartEntryAt: self index - 1) text, (self bubble messagePartEntryAt: self index) text capitalized.
	(PXRemoveMessagePart at: index of: self bubble) do.
	(PXChangeMessagePart at: index - 1 of: self bubble to: newText) do.
	
	(self bubble argumentAt: index - 1) focus