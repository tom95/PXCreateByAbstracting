as yet unclassified
buildDemoEditorOn: aSlide

	| classEditor treeMorph container |
	WorkingTreeMorph reset.
	
	treeMorph := WorkingTreeMorph new extent: 100 asPoint withScalingFactor.
	classEditor := (PXClassEditor for: WorkingTreeMorph)
		expand: true;
		when: #modified send: #changed to: treeMorph.
	
	aSlide
		removeAllMorphs;
		add: (container := PHMorphContainer new ignoreLayout: true; position: 200 asPoint withScalingFactor; add: treeMorph; resizeToPreferred);
		add: classEditor;
		add: ((PHButton text: 'Emergency Reset!')
			addStyleClass: #danger;
			when: #clicked send: #buildDemoEditorOn: to: self with: aSlide).
			
		treeMorph position: container position