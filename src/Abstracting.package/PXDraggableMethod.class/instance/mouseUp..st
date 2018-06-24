as yet unclassified
mouseUp: anEvent

	AnimPropertyAnimation new
		duration: self class durationStartDragScaling;
		target: self;
		property: #scale;
		startValue: self class scaleWhileMoving;
		endValue: 1;
		start: #deleteWhenFinished;
		finishBlock: [self method visible: true];
		register