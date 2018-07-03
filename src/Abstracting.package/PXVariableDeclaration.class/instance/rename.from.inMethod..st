as yet unclassified
rename: aString from: anotherString inMethod: aMethod

	aMethod allMorphsDo: [:m |
		(m isBubble and: [(m isIdentifier or: [m isVariableName]) and: [m resolveDeclaration == self"m data = anotherString"]]) ifTrue: [
			m
				data: aString;
				uneditedName: aString;
				changed]]