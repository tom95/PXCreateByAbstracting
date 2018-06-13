accessing
selectedBubble: aBubble
	
	selectedBubble == aBubble ifTrue: [^ self].
	
	selectedBubble := aBubble.
	self buttons removeAllMorphs.
	
	aBubble ifNotNil: [aBubble actions do: [:action | self buttons add: (self buttonForAction: action)]]