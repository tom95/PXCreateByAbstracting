as yet unclassified
initialize

	super initialize.
	
	self addAll: {
		(PHDropdownItem label: 'assign to sel') when: #clicked evaluate: [self selectedBubble wrapInAssignment].
		(PHDropdownItem label: 'use as argument') when: #clicked evaluate: [self selectedBubble wrapInMessageSendAsArgument].
		(PHDropdownItem label: 'use as receiver') when: #clicked evaluate: [self selectedBubble wrapInMessageSendAsReceiver].
		(PHDropdownItem label: 'return this') when: #clicked evaluate: [self selectedBubble wrapInReturn].
		(PHDropdownItem label: 'wrap in block') when: #clicked evaluate: [self selectedBubble wrapInBlock].
		(PHDropdownItem label: 'delete sel') when: #clicked evaluate: [self selectedBubble remove].
		(PHDropdownItem label: 'delete around sel') when: #clicked evaluate: [self selectedBubble removeOuter].
		(PHDropdownItem label: 'replace by var') when: #clicked evaluate: [self selectedBubble replaceByVariable]}