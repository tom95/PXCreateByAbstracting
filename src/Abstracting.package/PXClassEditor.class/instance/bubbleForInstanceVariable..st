as yet unclassified
bubbleForInstanceVariable: aNameString

	^ instanceVariables submorphs detect: [:var | var name = aNameString] ifNone: []