as yet unclassified
trimCrAndTab: aString

	| index |
	index := aString size.
	[(aString at: index) = Character cr or: [(aString at: index) = Character tab]] whileTrue: [index := index - 1].
	^ index = aString size
		ifTrue: [aString]
		ifFalse: [aString first: index]