*Abstracting
asBubble

	self key isNumber ifTrue: [^ PXNumber value: self key].
	self key isSymbol ifTrue: [^ PXSymbol value:  self key].
	self key isString ifTrue: [^ PXString value: self key].
	^ PXValue value: self key