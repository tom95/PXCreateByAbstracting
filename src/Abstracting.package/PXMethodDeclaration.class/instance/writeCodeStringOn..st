as yet unclassified
writeCodeStringOn: aStream

	self submorphs
		do: [:labelOrBubble |
			labelOrBubble isBubble
				ifTrue: [labelOrBubble writeCodeStringOn: aStream]
				ifFalse: [aStream nextPutAll: labelOrBubble text]]
		separatedBy: [aStream space]