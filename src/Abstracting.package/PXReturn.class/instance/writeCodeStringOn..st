as yet unclassified
writeCodeStringOn: aStream

	aStream nextPut: $^.
	self statement writeCodeStringOn: aStream