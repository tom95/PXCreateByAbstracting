as yet unclassified
isKeyword
	
	^ self submorphCount > 1 and: [(self firstSubmorph text allSatisfy: #isSpecial) not]