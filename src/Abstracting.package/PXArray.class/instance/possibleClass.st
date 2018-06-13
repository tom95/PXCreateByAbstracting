as yet unclassified
possibleClass

	^ self arrayType caseOf: [
		[#dynamic] -> [{} class].
		[#byte] -> [#[] class].
		[#literalBytes] -> [#() class]]