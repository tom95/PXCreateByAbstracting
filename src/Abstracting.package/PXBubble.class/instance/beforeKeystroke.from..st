as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	anEvent keyString = '<up>' ifTrue: [
		self selectUp. ^ true].
	
	anEvent keyString = '<down>' ifTrue: [
		self selectDown. ^ true].
	
	(anEvent keyCharacter = Character arrowLeft and: [aTextEntry cursorAtStart]) ifTrue: [
		aTextEntry closestTextEntryBefore takeCursorAtEnd. ^ true].
	
	(anEvent keyCharacter = Character arrowRight and: [aTextEntry cursorAtEnd]) ifTrue: [
		 aTextEntry closestTextEntryAfter takeCursorAtStart. ^ true].
	
	anEvent keyString = '<tab>' ifTrue: [
		aTextEntry closestTextEntryAfter takeCursor. ^ true].
	
	anEvent keyString = '<Shift-tab>' ifTrue: [
		aTextEntry closestTextEntryBefore takeCursor. ^ true].
	
	anEvent keyString = '<cr>' ifTrue: [
		self run: self newLineBelow. ^ true].
	
	anEvent keyString = '<Shift-cr>' ifTrue: [
		self run: self newLineAbove. ^ true].
	
	^ false