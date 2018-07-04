as yet unclassified
addMethodFromSource: anotherString

	| method |
	method := (PXMethod fromSource: anotherString in: self contextClass)
		addTo: self;
		yourself.
		
	self add: (PXDraggableMethod new method: method; position: 100 asPoint).
	
	^ method