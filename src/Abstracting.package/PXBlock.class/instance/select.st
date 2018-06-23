as yet unclassified
select

	self blockDepth = 1
		ifTrue: [self editor clearSelection]
		ifFalse: [super select]