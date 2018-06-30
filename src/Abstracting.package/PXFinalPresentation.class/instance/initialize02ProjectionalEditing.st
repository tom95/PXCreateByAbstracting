as yet unclassified
initialize02ProjectionalEditing

self addSlideWithLayout
	add: (PHLabel pageHeader: 'Projectional  Editing');
	add: ((PHImage path: (self class imagePath: 'ast-vs-projection.png')) framed: false; align: #(center center)).

self addSlideWithLayout
	add: (PHLabel pageHeader: 'Enter Projectional Editing').
" so if you were to write e.g. javascript code, what you'd do is open visual studio code or sublime or any other text editor or IDE and you'd type text according to the javascript syntax grammar. you then pass this on to a javascript parser which constructs an AST for you, provided that you adhere to the grammar and this AST can then be handed to the next step of your execution pipeline, be that a compiler or interpreter.
In a projectional editor, we don't need a parser. Instead, the editor consists of a projection, think visualization, of the AST. We directly modify every AST node, such that at any point we can hand the tree over to the compiler. This has numerous implications, some good, some bad and we want to go into some of those after showing you what our projectional editor looks like currently. "
" -->  image of an AST, probably smalltalk for simplicity "

" --> our editor, empty start writing method "