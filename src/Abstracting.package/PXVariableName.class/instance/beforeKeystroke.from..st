as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	(anEvent keyCharacter = Character backspace and: [aTextEntry text isEmpty]) ifTrue: [
		self owner requestDeleteFrom: self. ^ true].
	
	^ super beforeKeystroke: anEvent from: aTextEntry