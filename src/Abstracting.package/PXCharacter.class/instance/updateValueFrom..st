as yet unclassified
updateValueFrom: aString

	(aString first ~= $$ or: [aString size ~= 2]) ifTrue: [^ self replaceBy: [PXUnknown value: aString]].
	
	value := aString second