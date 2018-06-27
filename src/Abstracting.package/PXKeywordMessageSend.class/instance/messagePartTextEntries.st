as yet unclassified
messagePartTextEntries

	^ (Interval from: 1 + (isInCascade ifTrue: [0] ifFalse: [1]) to: self submorphs size - 1 by: 2)
		collect: [ :i | self submorphs at: i]