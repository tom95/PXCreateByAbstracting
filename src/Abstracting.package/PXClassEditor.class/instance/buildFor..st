as yet unclassified
buildFor: aClass

	self
		extent: self initialExtent;
		add: (PXPage column
			add: ((PHLabel heading: aClass name) position: 10 @ 10);
			add: (PXPage row addAll: (aClass instVarNames collect: [:name | PXVariableName name: name]));
			resizeToPreferred).
		
	aClass methodsDo: [:method | | methodBubble |
		methodBubble := PXDraggableMethod new
			method: (PXMethod for: method selector of: aClass);
			position: 800 atRandom @ 800 atRandom;
			yourself.
		
		self add: methodBubble]