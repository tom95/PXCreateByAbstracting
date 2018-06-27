as yet unclassified
arguments
	"skip each message part and the receiver"
	^ (Interval from: 2 + (isInCascade ifTrue: [0] ifFalse: [1]) to: self submorphs size by: 2)
		collect: [ :i | self submorphs at: i]