as yet unclassified
updateBold

	(#('self' 'true' 'false' 'nil' 'thisContext' 'super') includes: self value)
		ifTrue: [textEntry bold]
		ifFalse: [textEntry style: 'weight' set: 'normal']