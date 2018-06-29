as yet unclassified
printOn: aStream

	aStream nextPutAll: 'number '; nextPutAll: self data asString;
		nextPut: Character lf;
		nextPutAll: '0b'; nextPutAll: (self data printStringBase: 2);
		nextPut: Character lf;
		nextPutAll: '0x'; nextPutAll: (self data printStringBase: 64)