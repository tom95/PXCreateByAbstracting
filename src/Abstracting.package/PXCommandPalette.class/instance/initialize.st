accessing
initialize 
	
	super initialize.
	
	self
		addStyleClass: #pxCommandPalette;
		addApplicationStyles: ((PHStyle for: #pxCommandPallette) spacing: 2);
		vertical: true;
		
		add: (autosave := PHCheckboxWithLabel label: 'Autosave');
		
		add: (PHPage row
			add: (saveButton := (PHButton icon: #iconSave)
				disabled: true;
				when: #clicked send: #triggerEvent: to: self with: #requestSave);
			add: (PHButtonGroup new
				add: (undoButton := (PHButton icon: #iconUndo)
					when: #clicked send: #triggerEvent: to: self with: #requestUndo);
				add: (redoButton := (PHButton icon: #iconRepeat)
					when: #clicked send: #triggerEvent: to: self with: #requestRedo)));
		
		addAll: (buttons := {
			self buttonLabeled: 'assign to this' key: ':' icon: self iconAssignment do: [self selectedBubble wrapInAssignment].
			self buttonLabeled: 'use as argument' key: '<' icon: self iconUseAsArgument do: [self selectedBubble wrapInMessageSendAsArgument].
			self buttonLabeled: 'use as receiver' key: '>' icon: self iconUseAsReceiver do: [self selectedBubble wrapInMessageSendAsReceiver].
			self buttonLabeled: 'return this' key: '^' do: [self selectedBubble wrapInReturn].
			self buttonLabeled: 'wrap in block' key: '[' do: [self selectedBubble wrapInBlock].
			self buttonLabeled: 'delete this' key: 'bs' do: [self selectedBubble remove].
			self buttonLabeled: 'delete around this' key: 'del' do: [self selectedBubble removeOuter].
			self buttonLabeled: 'replace by var' key: '' do: [self selectedBubble replaceByVariable]});
		disableAll;
		
		add: (selectionInfo := PHLabel new)