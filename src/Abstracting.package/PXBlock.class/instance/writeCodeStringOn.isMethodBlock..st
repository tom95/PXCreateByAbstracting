as yet unclassified
writeCodeStringOn: aStream isMethodBlock: aBoolean

	aBoolean ifFalse: [aStream nextPut: $[].
	declarations ifNotNil: [declarations writeCodeStringOn: aStream].
	self statements do: [:statement | statement writeCodeStringOn: aStream] separatedBy: [aStream nextPut: $.].
	aBoolean ifFalse: [aStream nextPut: $]]