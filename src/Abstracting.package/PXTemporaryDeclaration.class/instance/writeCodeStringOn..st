as yet unclassified
writeCodeStringOn: aStream

	| pipesSeen |
	pipesSeen := 0.
	
	self submorphs
		do: [:labelOrBubble |
			labelOrBubble isBubble
				ifTrue: [
					pipesSeen = 0 ifTrue: [aStream nextPut: $:].
					labelOrBubble writeCodeStringOn: aStream]
				ifFalse: [
					aStream nextPutAll: labelOrBubble text.
					pipesSeen := pipesSeen + 1]]
		separatedBy: [aStream space]