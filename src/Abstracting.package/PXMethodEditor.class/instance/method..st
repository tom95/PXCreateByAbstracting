accessing
method: anObject
	
	method := anObject.
	
	self add: (method
		expand: true;
		yourself) at: 1