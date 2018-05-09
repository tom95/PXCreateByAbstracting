accessing
buttonLabeled: aString icon: anIcon do: aBlock

	^ PHButton new
		add: anIcon at: 1;
		text: aString;
		align: #(fill fill);
		small;
		when: #clicked evaluate: aBlock