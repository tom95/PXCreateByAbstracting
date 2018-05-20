as yet unclassified
do

	| text |
	text := (self bubble messagePartEntryAt: self index) text.
	
	(PXChangeMessagePart at: index of: self bubble to: (text allButFirst: self textIndex) withFirstCharacterDownshifted) do.
	(PXAddMessagePart with: (text first: self textIndex) withFirstCharacterDownshifted, $: at: index of: self bubble) do