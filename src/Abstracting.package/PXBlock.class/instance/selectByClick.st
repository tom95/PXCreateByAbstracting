as yet unclassified
selectByClick

	self blockDepth = 1
		ifTrue: [self root clearSelection]
		ifFalse: [super selectByClick]