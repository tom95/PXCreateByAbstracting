as yet unclassified
arguments
	"skip each message part and the receiver"
	^ (Interval from: 3 to: self submorphs size by: 2)
		collect: [ :i | self submorphs at: i ]