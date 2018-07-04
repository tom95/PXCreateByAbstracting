as yet unclassified
nameForExtractedMethod

	| i |
	i :=  0.
	[self methods
		detect: [:method |method selector = ('extracted', i asString) ]
		ifFound: [:name | i := i + 1]
		ifNone: [^ 'extracted', i asString]] whileTrue