as yet unclassified
validValue

	self arrayType == #literalBytes ifTrue: [^ self elements allSatisfy: #isNumber].
	self arrayType == #literal ifTrue: [^ self elements allSatisfy: #isLiteral].
	^ true