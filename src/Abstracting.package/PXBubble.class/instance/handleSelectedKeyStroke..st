as yet unclassified
handleSelectedKeyStroke: anEvent

	" bubble the keystroke to the top most selected "
	self owner selected ifTrue: [^ self owner handleSelectedKeyStroke: anEvent].
	
	anEvent keyCharacter = $: ifTrue: [
		self root clearSelection. self wrapInAssignment. ^self].
	
	anEvent keyCharacter = Character backspace ifTrue: [
		self root clearSelection. self remove. ^self].
	
	anEvent keyCharacter = Character delete ifTrue: [ 
		self root clearSelection. self removeOuter. ^self].
	
	anEvent keyCharacter = Character escape ifTrue: [self root clearSelection. ^self].
	
	anEvent keyCharacter = $^ ifTrue: [
		self root clearSelection. self wrapInReturn. ^self].
	
	anEvent keyCharacter = $[ ifTrue: [
		self root clearSelection. self wrapInBlock. ^self].
	
	anEvent keyCharacter = $< ifTrue: [
		self root clearSelection. self wrapInMessageSendAsArgument. ^self].
	
	anEvent keyCharacter = $> ifTrue: [
		self clearSelection. self wrapInMessageSendAsReceiver. ^self].
	
	anEvent keyString = '<right>' ifTrue: [
		^ self bubbleAfter ifNotNilDo: [:bubble| bubble select]].
	
	anEvent keyString = '<left>' ifTrue: [
		^ self bubbleBefore ifNotNilDo: [:bubble| bubble select]].