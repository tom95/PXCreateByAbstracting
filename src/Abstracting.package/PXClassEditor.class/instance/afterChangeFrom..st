as yet unclassified
afterChangeFrom: aMethod

	super afterChangeFrom: aMethod.
	
	aMethod valid ifTrue: [
		self triggerEvent: #modified.
		aMethod save]