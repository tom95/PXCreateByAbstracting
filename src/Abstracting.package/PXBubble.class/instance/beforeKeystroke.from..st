as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	(anEvent keyCharacter = Character escape and: [contextDropdown notNil]) ifTrue: [
		self closeContextDropdown. ^ true].
	
	anEvent keyString = '<Cmd-e>' ifTrue: [self editor requestToggleEditor. ^ true].
	
	anEvent keyString = '<Ctrl-space>' ifTrue: [self displayContextActions. ^ true].

	anEvent keyCharacter = Character arrowUp ifTrue: [
		contextDropdown ifNotNil: [contextDropdown selectNext. ^ true].
		self selectUp. ^ true].
	
	anEvent keyCharacter = Character arrowDown ifTrue: [
		contextDropdown ifNotNil: [contextDropdown selectPrevious. ^ true].
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
		contextDropdown ifNotNil: [contextDropdown confirmSelection: anEvent. ^ true].
		self run: self newLineBelow. ^ true].
	
	anEvent keyString = '<Shift-cr>' ifTrue: [
		self run: self newLineAbove. ^ true].
	
	^ false