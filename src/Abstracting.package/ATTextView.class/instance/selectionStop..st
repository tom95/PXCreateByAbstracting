as yet unclassified
selectionStop: aNumber

	| start stop |
	selectionStop := aNumber.
	
	start := selectionStart min: selectionStop.
	stop := selectionStart max: selectionStop.
	
	self flag: #optimize. "can just deselect the delta"
	self deselectAll.
	self submorphs from: start to: stop do: [:morph | morph selected: true]