as yet unclassified
updateBold

	self isReserved
		ifTrue: [textEntry addAttribute: TextEmphasis bold]
		ifFalse: [textEntry removeAttribute: TextEmphasis bold]