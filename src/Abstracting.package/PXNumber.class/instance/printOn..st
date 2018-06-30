as yet unclassified
printOn: aStream

	aStream nextPutAll: 'number '; nextPutAll: self data asString;
		nextPut: Character lf;
		nextPutAll: '2r'; nextPutAll: (self data printStringBase: 2);
		nextPut: Character lf;
		nextPutAll: '16r'; nextPutAll: (self data printStringBase: 16)