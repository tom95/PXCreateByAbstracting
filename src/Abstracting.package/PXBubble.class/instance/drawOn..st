as yet unclassified
drawOn: aCanvas

	| bubbleColor |
	bubbleColor := self bubbleColor.
	PHRenderer
		drawBackgroundOn: aCanvas
		bounds: self bounds
		color: bubbleColor
		radius: (Rectangle origin: 5 @ 5 corner: 5 @ 5) withScalingFactor.
	
	(self selected and: [self owner selected not]) ifTrue: [self drawBorder: Color veryLightGray on: aCanvas width: 4].
	
	self flag: #fixme. "maybe pick different colors here"
	(self highlight or: [self validValue not]) ifTrue: [self drawBorder: Color red on: aCanvas width: 2].
	
	self flag: #fixme. " hack to recompute child's text color just before its drawn "
	((bubbleColor red * 255 * 299) + (bubbleColor green * 255 * 587) + (bubbleColor blue * 255 * 114)) / 1000 > PHStyleProvider yiqConstranstedThreshold
		ifTrue: [self styleContext basicAddClass: #dark]
		ifFalse: [self styleContext basicRemoveClass: #dark]