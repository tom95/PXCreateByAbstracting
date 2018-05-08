as yet unclassified
handleSelectedKeyStroke: anEvent

	" bubble the keystroke to the top most selected "
	self owner selected ifTrue: [^ self owner handleSelectedKeyStroke: anEvent].
	
	anEvent keyCharacter = $: ifTrue: [
		self root clearSelection. self wrapInAssignment].
	
	anEvent keyCharacter = Character backspace ifTrue: [
		self root clearSelection. self remove].
	
	anEvent keyCharacter = Character delete ifTrue: [ 
		self root clearSelection. self removeOuter].
	
	anEvent keyCharacter = Character escape ifTrue: [self root clearSelection].
	
	anEvent keyCharacter = $^ ifTrue: [
		self root clearSelection. self wrapInReturn].
	
	anEvent keyCharacter = $[ ifTrue: [
		self root clearSelection. self wrapInBlock].
	
	anEvent keyCharacter = $< ifTrue: [
		self root clearSelection. self wrapInMessageSendAsArgument].
	
	anEvent keyCharacter = $> ifTrue: [
		self clearSelection. self wrapInMessageSendAsReceiver]