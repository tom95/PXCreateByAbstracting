as yet unclassified
focusArgumentAt: aNumber

	(self submorphs at: aNumber * 2 + 1) focus "skip each message part and the receiver"