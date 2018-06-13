as yet unclassified
bubble: aBubble

	aBubble actions do: [:actionClass |
		self add: ((PHDropdownItem label: actionClass) when: #clicked send: #runAction: to: aBubble with: actionClass)]