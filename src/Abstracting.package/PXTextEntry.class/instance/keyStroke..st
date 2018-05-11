as yet unclassified
keyStroke: anEvent

	| previous |
	(self owner beforeKeystroke: anEvent from: self) ifTrue: [^ self].
	previous := self text.
	
	super keyStroke: anEvent.
	
	previous ~=  self text ifTrue: [
		self owner afterKeystroke: anEvent from: self previous: previous]