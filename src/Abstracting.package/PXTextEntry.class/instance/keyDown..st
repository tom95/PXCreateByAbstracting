as yet unclassified
keyDown: anEvent

	self owner selected ifTrue: [^ self].

	self flag: #fixme. "no idea why, but this event will not be reported in keyStroke: (tested on linux)"
	anEvent keyString = '<Shift-tab>' ifTrue: [self closestTextEntryBefore selectAll; grabKeyboard]