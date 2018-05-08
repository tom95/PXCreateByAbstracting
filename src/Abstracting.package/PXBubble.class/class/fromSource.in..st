as yet unclassified
fromSource: aString in: aClass

	^ (Parser new parse: aString class: aClass noPattern: false notifying: nil ifFail: nil) block asBubble