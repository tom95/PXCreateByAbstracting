as yet unclassified
addMethodNamed: aString bubble: aBubble

	| method |
	method := self addMethodFromSource: aString.
	
	method block addStatement: aBubble.
	method valid ifTrue: [method save]