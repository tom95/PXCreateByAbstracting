as yet unclassified
beforeKeystroke: anEvent from: aTextEntry
	
	anEvent keyCharacter isSpecial ifTrue: [
		(aTextEntry text notEmpty or: [messagePartTextEntries size > 1]) ifTrue: [^ true].
		self run: (PXChangeMessage of: self content: anEvent keyCharacter asString asSymbol).
		^ true].
	
	anEvent keyCharacter = $: ifTrue: [
		aTextEntry cursorAtEnd ifFalse: [(self closestTextEntryAfter: aTextEntry) focus. ^ true].
		((messagePartTextEntries includes: aTextEntry) or: [aTextEntry == trailingTextEntry]) ifTrue: [
			self run: (PXChangeMessage of: self content: (self selectorIncluding: anEvent keyCharacter in: aTextEntry))].
		^ true].
	
	(anEvent keyCharacter = Character backspace and: [aTextEntry == messagePartTextEntries first] and: [aTextEntry text = '']) ifTrue: [
		self run: (PXReplace bubble: self with: self receiver).
		^ false].
	
	(anEvent keyCharacter isLetter and: [aTextEntry == trailingTextEntry]) ifTrue: [
		self run: (PXChangeMessage of: self content: (self selectorIncluding: anEvent keyCharacter asString, $: in: aTextEntry)).
		messagePartTextEntries last grabKeyboard; placeCursorAt: 1.
		^ true].
	
	^ super beforeKeystroke: anEvent from: aTextEntry