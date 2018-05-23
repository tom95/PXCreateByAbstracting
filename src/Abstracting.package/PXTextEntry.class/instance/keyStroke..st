as yet unclassified
keyStroke: anEvent

	| previous |
	self owner root withSelectedDo: [:selected | ^ selected keystrokeWhileSelected: anEvent from: self].
	
	(self owner beforeKeystroke: anEvent from: self) ifTrue: [^ self].
	previous := self text.
	
	super keyStroke: anEvent.
	
	(previous ~=  self text and: [self owner ~= nil]) ifTrue: [
		self owner afterKeystroke: anEvent from: self previous: previous]