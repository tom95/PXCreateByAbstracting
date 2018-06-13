as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	(anEvent keyCharacter == Character backspace and: [aTextEntry cursorAtStart]) ifTrue: [
		^ self run: (PXReplace bubble: self with: self receiver)].
	
	(anEvent keyCharacter == Character backspace and: [aTextEntry text size = 1]) ifTrue: [
		^ self replaceWithNewSend: #''].
	
	^ super beforeKeystroke: anEvent from: aTextEntry