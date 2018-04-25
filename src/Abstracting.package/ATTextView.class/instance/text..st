as yet unclassified
text: aString

	| ranges font |
	font := self fontToUse.
	ranges := (SHParserST80 new rangesIn: aString classOrMetaClass: Object workspace: nil environment: nil)
		copyWith: (SHRange start: aString size + 1 end: 0 type: #eof).
	
	ranges overlappingPairsDo: [:range :nextRange | 
		self addMorphBack: ((ATWord newForFont: font)
			untrimmedContents: aString from: range start to: nextRange start - 1;
			color: (self colorMappingFor: range type);
			when: #activated send: #activeWord: to: self;
			yourself).
		
		aString from: range end + 1 to: nextRange start - 1 do: [:char |
			char = Character cr ifTrue: [self addMorphBack: (ATLineBreak newForFont: font)].
			char = Character tab ifTrue: [self addMorphBack: (ATIndent newForFont: font)]]]