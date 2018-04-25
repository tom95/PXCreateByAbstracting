as yet unclassified
advance: aNumber ifFitting: aBlock ifOverflown: anotherBlock
	" advance cursor by aNumber horizontally. if we dont overflow, call aBlock with position where we started. Else, evaluate anotherBlock to handle overflow"

	| newX |
	newX := self x + aNumber.
	newX <= self maxX
		ifTrue: [
			aBlock value: self position.
			self x: newX]
		ifFalse: anotherBlock