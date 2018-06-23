accessing
method: anObject
	
	method := anObject.
	
	method ifNotNil: [method removeActionsWithReceiver: self commandPalette].
	
	self add: (method
		expand: true;
		when: #selectedBubble send: #selectedBubble: to: self commandPalette;
		when: #requestToggleEditor send: #toggleVisible to: self commandPalette;
		yourself) at: 1