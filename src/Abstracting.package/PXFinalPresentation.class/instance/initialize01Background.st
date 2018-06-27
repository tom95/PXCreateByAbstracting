as yet unclassified
initialize01Background

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'From Abstracting to Projectional Editors');
	add: (PHLabel subcategoryHeader: 'Programming Experience').

self addSlideWithLayout
	add: (PHLabel pageHeader: '„Learnable Programming“');
	add: ((PHImage path: FileDirectory default / 'px-dnd.png') align: #(center center)).
" an essay by Bret Victor that he wrote after his live-coding work was quoted as inspiration for Khan Academy's JavaScript learning editor. Essentially he demonstrates multiple properties that an environemnt that supports learning programing should support, which the Khan Academy editor lacks "
" --> show image of the editor, maybe from show-the-state "

self addSlideWithCenterBox
	add: ((PHLabel pageHeader: '„Create By Abstracting“'));
	add: (PHLabel subcategoryHeader: 'start concrete, then abstract').
	"TODO ADD GIF"
" we picked one of the aspects Victor mentions, namely create by abstracting. It's essentially the statement that you will want to just put whatever values fit right now for you, maybe experiment with them until you find something that you like. You can then go in and name that concept that you just changed, thereby abstracting it "

self addSlideWithLayout
	add: (PHLabel pageHeader: 'First Protoype').
" we quickly realized that, as seen in the gif, we will have to make somehow tangible. we chose to do by running a tokenizer over a given function and creating a separate morph for each part. this however, had numerous downsides, in particular a disconnect between what the programmer means and what we abstracted as an object. To put this more clearly, when we write code, we don't think in terms of tokens like the := or the first part of an at:put:. We think in terms of assignments or message sends."
" --> show first protoype, maybe what splitting into tokens means "

self addSlideWithLayout
	add: (PHLabel pageHeader: 'Enter Projectional Editing').
" so if you were to write e.g. javascript code, what you'd do is open visual studio code or sublime or any other text editor or IDE and you'd type text according to the javascript syntax grammar. you then pass this on to a javascript parser which constructs an AST for you, provided that you adhere to the grammar and this AST can then be handed to the next step of your execution pipeline, be that a compiler or interpreter.
In a projectional editor, we don't need a parser. Instead, the editor consists of a projection, think visualization, of the AST. We directly modify every AST node, such that at any point we can hand the tree over to the compiler. This has numerous implications, some good, some bad and we want to go into some of those after showing you what our projectional editor looks like currently. "
" -->  image of an AST, probably smalltalk for simplicity "

" --> our editor, empty start writing method "