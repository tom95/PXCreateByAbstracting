as yet unclassified
changeDelta: aNumber

	| newNumber |
	newNumber := self data isInteger
		ifTrue: [self data + aNumber]
		ifFalse: [self data + (aNumber * 0.1) truncateTo: 0.01].
	(self data isInteger not and: [newNumber < 0.1]) ifTrue: [ ^ self]. "Temporary hack to prevent problems with demo. TODO remove"
	self changedData: newNumber