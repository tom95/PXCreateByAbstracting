as yet unclassified
createLabelFor: aString

	^ PHLabel new
		align: #(start center);
		text: aString;
		wrap: #never;
		yourself