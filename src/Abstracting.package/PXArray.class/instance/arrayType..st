as yet unclassified
arrayType: aSymbol

	arrayType :=  aSymbol.
	
	aSymbol == #dynamic ifTrue: [
		textEntry text: '{'.
		closingTextEntry text: '}'].
	
	aSymbol == #literal ifTrue: [
		textEntry text: '#('.
		closingTextEntry text: ')'].
	
	aSymbol == #literalBytes ifTrue: [
		textEntry text: '#['.
			closingTextEntry text: ']'].
	
	self changed