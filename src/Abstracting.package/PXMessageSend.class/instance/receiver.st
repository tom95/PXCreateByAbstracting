as yet unclassified
receiver

	^ isInCascade ifTrue: [nil] ifFalse: [self firstSubmorph]