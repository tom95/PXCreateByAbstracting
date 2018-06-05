as yet unclassified
requestDeleteFrom: aBubble

	" keep the first non-unknown bubble, if any "
	"1 to: self submorphCount by: 2 do: [:index |
		(self submorphs at: index) isUnknown ifFalse: [^ self run: (PXReplace bubble: self with: (self submorphs at: index))]]."
	
	| argumentIndex |
	argumentIndex := self submorphIndexOf: aBubble.
	self run: (PXRemoveMessagePart at: (argumentIndex - 1 / 2) of: self).
	"
	^ self run: (PXReplace bubble: self with: PXUnknown new)"