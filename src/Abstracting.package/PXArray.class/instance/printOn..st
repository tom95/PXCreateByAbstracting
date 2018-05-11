as yet unclassified
printOn: aStream

	aStream nextPutAll: 'array ('; nextPutAll: (self submorphCount - 2) asString; nextPut: $)