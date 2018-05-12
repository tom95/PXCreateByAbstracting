as yet unclassified
focus
	
	^ self submorphs detect: #isBubble ifFound: #focus ifNone: [nil]