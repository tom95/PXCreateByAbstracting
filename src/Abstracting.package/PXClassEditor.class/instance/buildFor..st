as yet unclassified
buildFor: aClass

	contextClass :=  aClass.

	self
		extent: self initialExtent;
		add: (classDescription := PXPage column
			add: ((PHLabel heading: aClass name) position: 10 @ 10);
			add: (instanceVariables := PXPage row addAll: (aClass instVarNames collect: [:name | PXVariableDeclaration name: name]));
			resizeToPreferred).
		
	aClass methodsDo: [:method | | methodBubble |
		methodBubble := PXDraggableMethod new
			method: (PXMethod for: method selector of: aClass);
			position: 800 atRandom @ 800 atRandom;
			yourself.
		
		self add: methodBubble]