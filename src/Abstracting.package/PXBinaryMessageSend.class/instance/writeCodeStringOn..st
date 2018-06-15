as yet unclassified
writeCodeStringOn: aStream
	
	self submorphs
		do: [:entryOrBubble |
			entryOrBubble isBubble
				ifTrue: [aStream nextPut: $(. entryOrBubble writeCodeStringOn: aStream. aStream. aStream nextPut: $)]
				ifFalse: [aStream nextPutAll: entryOrBubble text]]
		separatedBy: [aStream space]