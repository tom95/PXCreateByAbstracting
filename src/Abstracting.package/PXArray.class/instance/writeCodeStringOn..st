as yet unclassified
writeCodeStringOn: aStream

	aStream nextPutAll: self firstSubmorph text.
	self elements do: [:bubble | bubble writeCodeStringOn: aStream] separatedBy: [aStream nextPut: $.].
	aStream nextPutAll: self lastSubmorph text