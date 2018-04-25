as yet unclassified
keyStroke: anEvent

	| key |
	key := anEvent keyString.
	
	key = '<left>' ifTrue: [
		^ self cursorIndex: self cursorIndex - 1].
	key = '<right>' ifTrue: [
		^ self cursorIndex: self cursorIndex + 1].
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