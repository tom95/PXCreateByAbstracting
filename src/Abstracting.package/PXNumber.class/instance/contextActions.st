as yet unclassified
contextActions

	^ self data isInteger
		ifTrue: [
			super contextActions, self baseConvertActions]
		ifFalse: [super contextActions]