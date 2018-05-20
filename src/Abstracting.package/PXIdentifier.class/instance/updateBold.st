as yet unclassified
updateBold

	(#('self' 'true' 'false' 'nil' 'thisContext' 'super') includes: textEntry text)
		ifTrue: [textEntry addAttribute: TextEmphasis bold]
		ifFalse: [textEntry removeAttribute: TextEmphasis bold]