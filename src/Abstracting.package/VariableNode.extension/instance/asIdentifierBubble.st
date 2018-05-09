*Abstracting
asIdentifierBubble

	self name = 'true' ifTrue: [^ PXBoolean value: true].
	self name  = 'false' ifTrue: [^ PXBoolean value: false].
	^ PXIdentifier value: self name