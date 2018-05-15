as yet unclassified
addBeforeTrailing: aPXBubble

	trailingTextEntry ifNil: [ self add: aPXBubble] ifNotNil:  [
		self add: aPXBubble before: trailingTextEntry]