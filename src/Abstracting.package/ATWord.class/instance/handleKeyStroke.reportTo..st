as yet unclassified
handleKeyStroke: anEvent reportTo: aTextView

	| key |
	key := anEvent keyString.
	
	key = '<left>' ifTrue: [
		^ self moveCursor: -1].
	key = '<right>' ifTrue: [
		^ self moveCursor: 1].
	(key = '<tab>' or: [key = '<Shift-tab>']) ifTrue: [
		"todo: move to next token"
		^ self].
	
	self editable ifTrue: [
		(key = '<backspace>' or: [key = '<Shift-backspace>']) ifTrue: [
			^ self deleteBeforeCursor].
		key = '<delete>' ifTrue: [
			^ self deleteAfterCursor].
		
		(anEvent controlKeyPressed or: [anEvent commandKeyPressed]) ifFalse: [
			self insertAtCursor: anEvent keyCharacter.
			self cursorIndex: self cursorIndex + 1]].