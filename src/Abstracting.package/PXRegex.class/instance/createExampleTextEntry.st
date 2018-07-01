as yet unclassified
createExampleTextEntry

	^ (PHTextEntry placeholder: 'Enter Example Here') when: #changed send: #exampleChanged to: self