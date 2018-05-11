as yet unclassified
requestDeleteFrom: aBubble

	" keep the first non-unknown bubble, if any "
	1 to: self submorphCount by: 2 do: [:index |
		(self submorphs at: index) isUnknown not ifTrue: [^ self run: (PXReplace bubble: self with: (self submorphs at: index))]].
	
	^ self run: (PXDeleteSelf bubble: self)