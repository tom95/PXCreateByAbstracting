as yet unclassified
beforeKeystroke: anEvent from: aTextEntry
	
	anEvent keyCharacter = $: ifTrue: [
		aTextEntry cursorAtEnd ifFalse: [^ false].
		((messagePartTextEntries includes: aTextEntry) or: [aTextEntry == trailingTextEntry]) ifTrue: [
			self run: (PXChangeMessage of: self content: (self selectorIncluding: anEvent keyCharacter in: aTextEntry))].
		^ false].
	
	(anEvent keyCharacter = Character backspace and: [aTextEntry == messagePartTextEntries first] and: [aTextEntry text = '']) ifTrue: [
		self run: (PXReplace bubble: self with: self receiver).
		^ false].
	
	(anEvent keyCharacter isLetter and: [aTextEntry == trailingTextEntry]) ifTrue: [
		self run: (PXChangeMessage of: self content: (self selectorIncluding: anEvent keyCharacter asString, $: in: aTextEntry)).
		messagePartTextEntries last grabKeyboard; placeCursorAt: 1].
	
	^ super beforeKeystroke: anEvent from: aTextEntry