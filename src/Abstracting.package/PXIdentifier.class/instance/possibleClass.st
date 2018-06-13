as yet unclassified
possibleClass

	^ textEntry text first isUppercase
		ifTrue: [Smalltalk at: textEntry text asSymbol ifPresent: #class]
		ifFalse: [
			textEntry text = 'self' ifTrue: [^ self root contextClass].
			
			self flag: #fixme. "this is a heuristic for demo purposes"
			textEntry text = 'aCanvas' ifTrue: [^ FormCanvas].
			
			nil]