accessing
buttonLabeled: aString key: anotherString icon: anIcon do: aBlock

	^ PHButton new
		add: anIcon at: 1;
		text: aString, ' (', anotherString, ')';
		align: #(fill fill);
		small;
		when: #clicked evaluate: aBlock