edit actions
removeOuter

	| inner |
	inner := self innerBubble.
	inner == self
		ifTrue: [self delete]
		ifFalse: [(self replaceBy: [inner]) focus]