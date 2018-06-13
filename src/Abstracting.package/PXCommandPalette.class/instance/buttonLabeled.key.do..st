accessing
buttonLabeled: aString key: anotherString do: aBlock

	^ (PHButton label: aString, ' (', anotherString, ')')
		align: #(fill fill);
		when: #clicked evaluate: aBlock;
		small