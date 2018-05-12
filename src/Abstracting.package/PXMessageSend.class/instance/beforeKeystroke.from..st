as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	anEvent keyCharacter = $: ifTrue: [
		aTextEntry cursorAtEnd ifFalse: [^ false].
		(messagePartTextEntries includes: aTextEntry) ifTrue: [
			self run: (PXChangeMessage of: self content: (self messageSymbolWith: anEvent in: aTextEntry)) ].
		^ false].
	
	^ super beforeKeystroke: anEvent from: aTextEntry