as yet unclassified
temporaries

	| seenPipe |
	seenPipe := false.
	
	^ Array streamContents: [:stream |
		self submorphsDo: [:morph |
			morph isBubble ifFalse: [seenPipe := true].
			
			(seenPipe and: [morph isBubble]) ifTrue: [stream nextPut: morph]]]