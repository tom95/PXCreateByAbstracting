as yet unclassified
constantNumberIfFound: aBlock ifNone: anotherBlock

	self method allMorphsDo: [:m |
		(m isBubble and: [m isAssignment and: [(m identifier matches: self) and: [m statement isNumber]]])
			ifTrue: [^ aBlock value: m statement data]].
	^ anotherBlock value