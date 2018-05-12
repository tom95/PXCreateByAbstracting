as yet unclassified
printOn: aStream

	aStream nextPutAll: 'character '; nextPut: (textEntry text size > 1 ifTrue: [textEntry text second] ifFalse: [$ ])