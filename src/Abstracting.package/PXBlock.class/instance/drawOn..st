as yet unclassified
drawOn: aCanvas

	" no background for the first block "
	self blockDepth = 1 ifFalse: [super drawOn: aCanvas]