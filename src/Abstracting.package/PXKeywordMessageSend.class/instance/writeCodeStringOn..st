as yet unclassified
writeCodeStringOn: aStream

	self submorphs
		do: [:entryOrBubble |
			entryOrBubble isBubble
				ifTrue: [aStream nextPut: $(.
						entryOrBubble writeCodeStringOn: aStream.
						aStream nextPut: $)]
				ifFalse: [entryOrBubble text size > 0 ifTrue: [aStream nextPutAll: entryOrBubble text, $:]]]
		separatedBy: [aStream space]