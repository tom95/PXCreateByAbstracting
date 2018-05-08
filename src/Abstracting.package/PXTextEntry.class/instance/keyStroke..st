as yet unclassified
keyStroke: anEvent

	| previous |
	anEvent keyString = '<up>' ifTrue: [
		^ self owner selectUp].
	
	anEvent keyString = '<down>' ifTrue: [
		^ self owner selectDown].
	
	self owner selected ifTrue: [^ self owner handleSelectedKeyStroke: anEvent].
	
	anEvent keyString = '<tab>' ifTrue: [
		^ self closestTextEntryAfter selectAll; grabKeyboard].
	
	anEvent keyString = '<Shift-tab>' ifTrue: [
		^ self owner previousBubble focus].
	
	anEvent keyString = '<cr>' ifTrue: [
		^ self owner newLineBelow focus].
	
	anEvent keyString = '<Shift-cr>' ifTrue: [
		^ self owner newLineAbove focus].
	
	(self owner handleKeyStroke: anEvent from: self) ifTrue: [^ self].
	
	previous := self text.
	super keyStroke: anEvent.
	
	previous ~=  self text ifTrue: [
		self owner afterChange: anEvent from: self previous: previous]