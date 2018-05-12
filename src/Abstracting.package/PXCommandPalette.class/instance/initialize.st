accessing
initialize 
	
	super initialize.
	
	self
		addStyleClass: #pxCommandPalette;
		buttons: {
			self buttonLabeled: 'assign to self' icon: self iconAssignment do: [self selectedBubble wrapInAssignment].
			self buttonLabeled: 'use as argument' icon: self iconUseAsArgument do: [self selectedBubble wrapInMessageSendAsArgument].
			self buttonLabeled: 'use as receiver' icon: self iconUseAsReceiver do: [self selectedBubble wrapInMessageSendAsReceiver].
			self buttonLabeled: 'return this' do: [self selectedBubble wrapInReturn].
			self buttonLabeled: 'wrap in block' do: [self selectedBubble wrapInBlock].
			self buttonLabeled: 'delete sel' do: [self selectedBubble remove].
			self buttonLabeled: 'delete around sel' do: [self selectedBubble removeOuter].
			self buttonLabeled: 'replace by var' do: [self selectedBubble replaceByVariable]};
		addAll: self buttons;
		add: (PHButtonGroup new
			add: (undoButton := (PHButton icon: #iconUndo)
				when: #clicked send: #triggerEvent: to: self with: #requestUndo);
			add: (redoButton := (PHButton icon: #iconRepeat)
				when: #clicked send: #triggerEvent: to: self with: #requestRedo));
		add: (selectionInfo := PHLabel new);
		addApplicationStyles: ((PHStyle for: #pxCommandPallette) spacing: 2);
		vertical: true;
		disableAll