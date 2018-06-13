as yet unclassified
undo

	| text |
	text := (self bubble messagePartEntryAt: self index) text.
	
	(PXChangeMessagePart at: self index of: self bubble to: self previousText) do.
	(PXRemoveMessagePart at: self index + 1 of: self bubble) do