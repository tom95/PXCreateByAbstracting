as yet unclassified
doubleClick: anEvent

	| selector |
	selector := self selector.
	(self root contextClass whichSuperclassSatisfies: [:class | class methodDict includesKey: selector])
		ifNotNil: [:class | | text |
			text := SHTextStylerST80 new
				classOrMetaClass: class;
				styledTextFor: (class >> selector) getSourceFromFile.
			
			PHPopover new
				add: (PHLabel text: text);
				openFor: self event: anEvent]

	