accessing
buttonForAction: anActionClass

	^ (PHButton label: anActionClass description, ' (', (self labelForShortcut: anActionClass shortcut), ')')
		align: #(fill fill);
		when: #clicked send: #runAction: to: self selectedBubble with: anActionClass;
		small