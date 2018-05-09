accessing
method: anObject
	
	method := anObject.
	
	method ifNotNil: [method removeActionsWithReceiver: self commandPalette].
	
	self add: (method
		expand: true;
		when: #selectedBubble send: #didSelect: to: self commandPalette;
		yourself) at: 1