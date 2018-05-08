as yet unclassified
setFromSource: aString in: aClass

	| method |
	method := Parser new parse: aString class: aClass noPattern: false notifying: nil ifFail: nil.
	self add: (PXBubble new add: method patternAsBubble).
	self add: (method block asBubbleWithTemporaries: method temporaries)