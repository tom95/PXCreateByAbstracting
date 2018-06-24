as yet unclassified
bubble: aBubble

	bubble := aBubble.
	
	aBubble
		on: #startDrag send: #startDrag: to: self;
		on: #mouseMove send: #mouseMove: to: self;
		on: #mouseUp send: #mouseUp: to: self