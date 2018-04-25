as yet unclassified
text: aString

	| parser ranges |
	parser := SHParserST80 new.
	ranges := parser rangesIn: aString classOrMetaClass: Object workspace: nil environment: nil.
	
	ranges overlappingPairsDo: [:range :nextRange |
		self addMorphBack: (ATStringMorph new contents: (aString copyFrom: range start to: nextRange start - 1); color: (self colorMappingFor: range type)).
		((aString copyFrom: range end + 1 to: nextRange start - 1) includes: Character cr) ifTrue: [self addMorphBack: ATLineBreak new]]