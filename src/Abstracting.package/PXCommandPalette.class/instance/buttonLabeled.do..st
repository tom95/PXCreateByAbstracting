accessing
buttonLabeled: aString do: aBlock

	^ (PHButton label: aString)
		align: #(fill fill);
		when: #clicked evaluate: aBlock;
		small