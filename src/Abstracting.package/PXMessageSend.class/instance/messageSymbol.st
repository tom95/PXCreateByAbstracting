as yet unclassified
messageSymbol
	| str |
	str := messagePartTextEntries inject: '' into: [:s :te | s, te text].
	^ str asSymbol 