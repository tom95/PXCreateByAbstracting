as yet unclassified
argumentAt: aNumber

	^ self submorphs at: aNumber * 2 + 1 ifAbsent: [nil] "skip each message part and the receiver"