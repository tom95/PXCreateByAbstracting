as yet unclassified
do

	previousText := (self bubble messagePartEntryAt: self index) text.
	
	(PXChangeMessagePart at: self index of: self bubble to: (previousText allButFirst: self textIndex) withFirstCharacterDownshifted) do.
	(PXAddMessagePart with: (previousText first: self textIndex) withFirstCharacterDownshifted at: self index of: self bubble) do