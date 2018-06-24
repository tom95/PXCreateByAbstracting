as yet unclassified
startDrag: anEvent

	self method visible: false.
	anEvent hand newMouseFocus: self.
	
	AnimPropertyAnimation new
		duration: self class durationStartDragScaling;
		target: self;
		property: #scale;
		startValue: 1;
		endValue: self class scaleWhileMoving;
		start: #deleteWhenFinished;
		register.
	
	dragReference := anEvent position