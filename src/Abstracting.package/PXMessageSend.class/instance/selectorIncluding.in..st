as yet unclassified
selectorIncluding: aString in: aTextEntry
	| entries selector |
	entries := messagePartTextEntries copy.
	trailingTextEntry ifNotNil: [entries add: trailingTextEntry].
	
	selector := entries inject: '' into: [:s :te |
		| text |
		 text := s, te text.
		te = aTextEntry ifTrue: [text := text, aString].
		text].
	^ selector asSymbol 