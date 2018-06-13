as yet unclassified
undo

	 | newArgument |
	newArgument := self bubble argumentAt: self index - 1.
	
	(PXAddMessagePart with: removedPart at: self index of: self bubble) do.
	(PXReplace bubble: newArgument with: oldArgument) do.
	(PXReplace bubble: (self bubble argumentAt: self index) with: newArgument) do.
	
	(self bubble argumentAt: index - 1) focus