as yet unclassified
writeCodeStringOn: aStream

	| isKeyword |
	isKeyword := self submorphCount > 1 and: [(self firstSubmorph text allSatisfy: #isSpecial) not].
	
	self submorphs
		do: [:labelOrBubble |
			labelOrBubble isBubble
				ifTrue: [labelOrBubble writeCodeStringOn: aStream]
				ifFalse: [aStream nextPutAll: labelOrBubble text, (isKeyword ifTrue: [$:] ifFalse: [''])]]
		separatedBy: [aStream space]