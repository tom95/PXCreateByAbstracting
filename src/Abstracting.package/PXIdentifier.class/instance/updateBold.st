as yet unclassified
updateBold

	(#('self' 'true' 'false' 'nil' 'thisContext' 'super') includes: textEntry text)
		ifTrue: [textEntry bold]
		ifFalse: [textEntry style: 'weight' set: 'normal']