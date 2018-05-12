as yet unclassified
writeCodeStringOn: aStream

	self methodDeclaration writeCodeStringOn: aStream.
	aStream cr.
	self block writeCodeStringOn: aStream isMethodBlock: true