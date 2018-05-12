as yet unclassified
messageSymbolWith: anEvent in: aTextEntry
	| str |
	str := messagePartTextEntries inject: '' into: [:s :te |
		| text |
		 text := s, te text.
		te = aTextEntry ifTrue: [text := text, anEvent keyCharacter].
		text].
	^ str asSymbol 