as yet unclassified
changeDelta: aNumber

	| newNumber |
	newNumber := self data + aNumber.
	self changedData: newNumber