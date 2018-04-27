as yet unclassified
initialize

	super initialize.
	
	self
		withLayout;
		vertical: true;
		add: (PHButtonGroup new
			add: ((PHButton icon: #iconReply)
				when: #clicked send: #abstractVariable to: self);
			add: ((PHButton icon: #iconFilter)
				when: #clicked send: #abstractFunction to: self));
		add: (textView := ATTextView new)