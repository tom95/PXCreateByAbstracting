as yet unclassified
initialize

	super initialize.
	self removeSlideAt: 1.
	
	self addUserStyles: (PHStyleProvider new
		add: ((PHStyle for: #(heading label))
			fontSize: 60;
			fontWeight: 'bold');
		add: ((PHStyle for: #(subheading label))
			fontSize: 40;
			fontWeight: 'bold');
		add: ((PHStyle for: #label)
			fontSize: 24);
		add: ((PHStyle for: #slide)
			padding: 4.0rem);
		add: ((PHStyle for: #(slide slideNoPadding))
			padding: 0);
		add: ((PHStyle for: #pxEditor asStyle > #label)
			fontSize: 16);
		add: ((PHStyle for: #(smallText label))
			fontSize: 16)).
	
	self
		initialize00Title;
		initialize01LearnableProgramming;
		initialize02ProjectionalEditing;
		initialize04Discussion