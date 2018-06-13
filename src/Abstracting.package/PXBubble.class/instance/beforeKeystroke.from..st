as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	anEvent keyString = '<Cmd-e>' ifTrue: [self root requestToggleEditor. ^ true].

	anEvent keyCharacter = Character arrowUp ifTrue: [
		self selectUp. ^ true].
	
	anEvent keyCharacter = Character arrowDown ifTrue: [
		self selectDownFrom: aTextEntry. ^ true].
	
	(anEvent keyCharacter = Character arrowLeft and: [aTextEntry cursorAtStart and: [aTextEntry hasSelection not]]) ifTrue: [
		aTextEntry closestTextEntryBefore takeCursorAtEnd. ^ true].
	
	(anEvent keyCharacter = Character arrowRight and: [aTextEntry cursorAtEnd  and: [aTextEntry hasSelection not]]) ifTrue: [
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