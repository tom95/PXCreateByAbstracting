as yet unclassified
isValidForPart: aString

	^ aString first isLetter and: [aString allSatisfy: #tokenish]