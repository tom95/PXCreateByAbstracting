as yet unclassified
click: anEvent

	| popover |
	popover := PHPopover new
		add: (PHMorphContainer new
			add: (NewColorPickerMorph on: self originalColor: self color setColorSelector: #changedColor: )).
	
	popover future openFor: self event: anEvent.
	
	super click: anEvent