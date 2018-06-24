as yet unclassified
bubbleForInstanceVariable: aNameString

	^ instanceVariables detect: [:name | name = aNameString]