edit actions
removeOuter

	| inner |
	self deselect.
	inner := self innerBubble.
	inner == self
		ifTrue: [self owner removeOuter]
		ifFalse: [	self run: (PXReplace bubble: self with: self innerBubble)]