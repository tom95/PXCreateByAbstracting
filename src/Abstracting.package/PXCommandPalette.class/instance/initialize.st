accessing
initialize 
	
	super initialize.
	self buttons: {
		(PHButton label: 'assign to sel') when: #clicked evaluate: [self selectedBubble wrapInAssignment].
		(PHButton label: 'use as argument') when: #clicked evaluate: [self selectedBubble wrapInMessageSendAsArgument].
		(PHButton label: 'use as receiver') when: #clicked evaluate: [self selectedBubble wrapInMessageSendAsReceiver].
		(PHButton label: 'return this') when: #clicked evaluate: [self selectedBubble wrapInReturn].
		(PHButton label: 'wrap in block') when: #clicked evaluate: [self selectedBubble wrapInBlock].
		(PHButton label: 'delete sel') when: #clicked evaluate: [self selectedBubble remove].
		(PHButton label: 'delete around sel') when: #clicked evaluate: [self selectedBubble removeOuter].
		(PHButton label: 'replace by var') when: #clicked evaluate: [self selectedBubble replaceByVariable]}.
	self addAll: self buttons.
	self withLayout; vertical: true