as yet unclassified
= aToken

	^ (aToken respondsTo: #contents) and: [aToken contents = self contents]