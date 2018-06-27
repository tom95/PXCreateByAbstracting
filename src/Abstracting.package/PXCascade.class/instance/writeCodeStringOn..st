as yet unclassified
writeCodeStringOn: aStream

	self receiver writeCodeStringOn: aStream.
	
	self messages do: [:message |
		message writeCodeStringOn: aStream.
		aStream nextPut: $;]