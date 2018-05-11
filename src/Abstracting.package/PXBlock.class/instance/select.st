as yet unclassified
select

	self blockDepth = 1
		ifTrue: [self root clearSelection]
		ifFalse: [super select]