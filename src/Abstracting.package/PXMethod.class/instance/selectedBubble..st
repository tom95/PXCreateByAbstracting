accessing
selectedBubble: aBubble
	
	selectedBubble ifNotNilDo: #basicDeselect.
	
	selectedBubble := aBubble.
	self triggerEvent: #selectedBubble with: aBubble