as yet unclassified
changedData: newNumber
	super changedData: (self data isInteger ifTrue: [newNumber truncated] ifFalse: [newNumber])