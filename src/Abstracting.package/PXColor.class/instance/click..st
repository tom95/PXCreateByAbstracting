as yet unclassified
click: anEvent

	| popover |
	popover := PHPopover new
		add: (PHMorphContainer new
			add: (NewColorPickerMorph on: self)).
	
	popover future openFor: self event: anEvent.
	
	super click: anEvent