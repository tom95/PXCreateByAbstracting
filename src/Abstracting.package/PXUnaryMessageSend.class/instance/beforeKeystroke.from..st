as yet unclassified
beforeKeystroke: anEvent from: aTextEntry
	
	" cant start with a number "
	(anEvent keyCharacter isDigit and: [aTextEntry cursorAtStart]) ifTrue: [^ true].
	
	(anEvent keyCharacter isSpecial and: [aTextEntry isEmpty]) ifTrue: [
		^ self replaceWithNewSend: anEvent keyCharacter asSymbol].
	
	anEvent keyCharacter == $: ifTrue: [
		^ self replaceWithNewSend: (aTextEntry cursorAtEnd
			ifTrue: [(aTextEntry text, $:) asSymbol]
			ifFalse: [aTextEntry splitAtCursorToMessageParts])].
	
	(anEvent keyCharacter == Character backspace and: [aTextEntry cursorAtStart]) ifTrue: [
		^ self run: (PXReplace bubble: self with: self receiver)].
	
	^ super beforeKeystroke: anEvent from: aTextEntry