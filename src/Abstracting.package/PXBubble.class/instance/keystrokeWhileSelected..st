as yet unclassified
keystrokeWhileSelected: anEvent

	anEvent keyCharacter = Character escape ifTrue: [^ self deselect].
	
	anEvent keyCharacter = Character arrowUp ifTrue: [^ self selectUp].
	
	anEvent keyCharacter = $: ifTrue: [^ self wrapInAssignment].
	
	anEvent keyCharacter = Character backspace ifTrue: [^ self remove].
	
	"TODO anEvent keyCharacter = Character delete ifTrue: [ 
		self root clearSelection. self removeOuter. ^self]."
	
	anEvent keyCharacter = $^ ifTrue: [^ self wrapInReturn].
	
	anEvent keyCharacter = $[ ifTrue: [^ self wrapInBlock].
	
	anEvent keyCharacter = $< ifTrue: [^ self wrapInMessageSendAsArgument].
	
	anEvent keyCharacter = $> ifTrue: [^ self wrapInMessageSendAsReceiver].
	
	"anEvent keyString = '<right>' ifTrue: [
		^ self bubbleAfter ifNotNilDo: [:bubble| bubble select]].
	
	anEvent keyString = '<left>' ifTrue: [
		^ self bubbleBefore ifNotNilDo: [:bubble| bubble select]]"