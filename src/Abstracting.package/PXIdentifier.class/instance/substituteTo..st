as yet unclassified
substituteTo: aToken

	| simpleReplace |
	simpleReplace := [aToken replaceBy: [self copy]].
	
	aToken isNumber
		ifTrue: [
			self constantNumberIfFound: [:number | aToken replaceBy: [PXMessageSend receiver: self copy selector: #+ arguments: {PXNumber value: aToken value - number}]] ifNone: simpleReplace]
		ifFalse: simpleReplace