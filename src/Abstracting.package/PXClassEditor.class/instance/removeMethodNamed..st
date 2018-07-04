as yet unclassified
removeMethodNamed: aString

	self contextClass removeSelector: aString asSymbol.
	self methods detect: [:method | method selector = aString] ifFound: #delete ifNone: []