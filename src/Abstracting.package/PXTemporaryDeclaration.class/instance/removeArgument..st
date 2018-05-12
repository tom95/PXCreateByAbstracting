as yet unclassified
removeArgument: aString

	(self arguments detect: [:a | a name = aString]) delete