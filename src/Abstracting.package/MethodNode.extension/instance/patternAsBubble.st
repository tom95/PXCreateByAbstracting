*Abstracting
patternAsBubble

	^ PXMethodDeclaration selector: self selector argumentNames: (self arguments collect: #asBubble)