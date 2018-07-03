as yet unclassified
buildFor: aClass

	contextClass :=  aClass.

	self
		extent: self initialExtent;
		add: (classDescription := PXPage column
			add: ((PHLabel heading: aClass name) position: 10 @ 10);
			add: (instanceVariables := PXPage row addAll: (aClass instVarNames collect: [:name | PXVariableDeclaration instance: name]));
			resizeToPreferred).
	
	methods := Array streamContents: [:stream |
		aClass methodsDo: [:method | 
			stream nextPut: (PXDraggableMethod new
				position: 800 atRandom @ 800 atRandom;
				" first add, so that the editor reference is assured "
				addTo: self;
				method: (PXMethod for: method selector of: aClass))]]