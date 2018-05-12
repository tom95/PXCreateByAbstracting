as yet unclassified
writeCodeStringOn: aStream

	aStream nextPut: $(.
	self identifier writeCodeStringOn: aStream.
	aStream nextPutAll: ':='.
	self statement writeCodeStringOn: aStream.
	aStream nextPut: $)