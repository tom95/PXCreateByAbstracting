as yet unclassified
generate

	^ (Parser new parse: self codeString class: class noPattern: false notifying: nil ifFail: nil) generate