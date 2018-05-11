as yet unclassified
key: aCharacter

	| morphicEvent |
	morphicEvent := MorphicEvent readFrom: ('{1} {2} {3} {4}' format: {
		#keystroke.
		0. "time"
		self mapButtons: #().
		aCharacter asciiValue}) readStream.
	
	morphicEvent
		wasHandled: false;
		setHand: hand;
		setPosition: unknown center.
		
	^ morphicEvent