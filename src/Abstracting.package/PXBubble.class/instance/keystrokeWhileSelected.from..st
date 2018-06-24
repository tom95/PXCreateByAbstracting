as yet unclassified
keystrokeWhileSelected: anEvent from: aTextEntry

	anEvent keyCharacter = Character escape ifTrue: [
		contextDropdown ifNotNil: [self closeContextDropdown].
		^ self deselect].
	anEvent keyCharacter = Character arrowUp ifTrue: [
		contextDropdown ifNotNil: [^ contextDropdown selectPrevious].
		^ self selectUp].
	anEvent keyCharacter = Character arrowDown ifTrue: [
		contextDropdown ifNotNil: [^ contextDropdown selectNext].
		^ self selectDownFrom: aTextEntry].
	
	self actions do: [:action | action triggerForShortcut: anEvent do: [^ self runAction: action]]
	
	"anEvent keyCharacter = $: ifTrue: [^ self wrapInAssignment].
	anEvent keyCharacter = Character backspace ifTrue: [^ self remove].
	anEvent keyCharacter = Character delete ifTrue: [^ self removeOuter].
	anEvent keyCharacter = $^ ifTrue: [^ self wrapInReturn].
	anEvent keyCharacter = $[ ifTrue: [^ self wrapInBlock].
	anEvent keyCharacter = $< ifTrue: [^ self wrapInMessageSendAsArgument].
	anEvent keyCharacter = $> ifTrue: [^ self wrapInMessageSendAsReceiver]."
	
	"anEvent keyString = '<right>' ifTrue: [
		^ self bubbleAfter ifNotNilDo: [:bubble| bubble select]].
	
	anEvent keyString = '<left>' ifTrue: [
		^ self bubbleBefore ifNotNilDo: [:bubble| bubble select]]"