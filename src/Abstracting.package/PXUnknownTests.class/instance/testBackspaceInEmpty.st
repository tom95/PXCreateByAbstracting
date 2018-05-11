as yet unclassified
testBackspaceInEmpty

	| topLevel |
	topLevel := PXBubble new.
	topLevel add: container.
	
	self keyStroke: unknown key: Character backspace.
	(self expect: topLevel submorphs) to beEmpty