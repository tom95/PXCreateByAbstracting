as yet unclassified
addInstanceVariable: aString

	super addInstanceVariable: aString.
	
	instanceVariables add: (PXVariableDeclaration name: aString).
	
	classDescription resizeToPreferred