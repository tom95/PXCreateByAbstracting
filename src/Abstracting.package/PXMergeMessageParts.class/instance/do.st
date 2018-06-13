as yet unclassified
do

	 | newText newArgument |
	newText  := (self bubble messagePartEntryAt: self index - 1) text.
	removedPart := (self bubble messagePartEntryAt: self index) text.
	newArgument := self bubble argumentAt: self index.
	oldArgument := self bubble argumentAt: self index - 1.
	
	(PXRemoveMessagePart at: self index of: self bubble) do.
	(PXReplace bubble: oldArgument with: newArgument) do.
	
	(self bubble argumentAt: index - 1) focus