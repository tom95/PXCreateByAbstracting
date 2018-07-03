as yet unclassified
initialize04Discussion

self addSlideWithCenterBox 
	add: (PHLabel pageHeader: 'Discussion').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Speed of Usage');
	add: (PHLabel markup: '
	• graphical programming generally perceived to be <b>slower</b>
	• early projectional editors required editing of <i>tree structures</i>');
	add: ((PHImage path: (self class imagePath: 'projectional editing proficiency.png')) framed: false);
	add: (PHLabel text: 'BERGER, Thorsten, et al. Efficiency of projectional editing: A controlled experiment. In: Proceedings of the 2016 24th ACM SIGSOFT International Symposium on Foundations of Software Engineering. ACM, 2016. S. 763-774.').

self addSlideWithCenterBox
	add: (PHLabel markup: '
	Jetbrain''s MPS uses <b>"guessing", autocompletion</b> and a <b>text-editor-like layout</b>, among other things
	
	Implementation below: <b>mbeddr</b>, MPS-based editor for <b>embedded C</b>');
	add: (PHImage path: (self class imagePath: 'mbeddr.jpg')).

self addSlideWithCenterBox
	add: (PHLabel markup: '
	<b>Guessing:</b> space on a number means <b>sending a message</b>, <b>+</b> in a message name means <b>binary message</b>');
	add: (PXMethodEditor minimalDoIt: '42').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Expressing Intent');
	add: (PHLabel markup: '
	• vim: generally perceived to <b>boost editing speed</b>
	• modes enable <b>minimal number of keystrokes</b> to express actions
	• grammar to express <b>intent</b> to editor');
	add: ((PHImage path: (self class imagePath: 'vim.png')) framed: false).

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Expressing Intent');
	add: (PHLabel markup: '
	• instead of acting on a <b>text buffer</b>, we can act on <b>smalltalk code</b>
	--> create grammar that <b>expresses this clearly</b>');
	add: (PXMethodEditor doIt: '42 squared').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Things We Learned');
	add: (PHLabel markup: '
	• <b>remove all syntax</b>
	• <b>visualization:</b> <b>new color</b> per block
	  - open question: how to fit large bubbles on screen for an overview
	• first class <b>undo</b>
	• <b>keyboard only</b> vs <b>mouse</b>
	• even simple Smalltalk language has an <b>abundance of possible actions</b>').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Limitations');
	add: (PHLabel markup: '
	• <b>performance:</b> bubbles are costly, zooming not easy
	• <b>detour</b> via generated codestring -> parser -> compiler
	  - easier compilation
	  - versioning support
	  - can''t attach extra info for projections (e.g. regex example)
	  - unnecessary computation
	• how to display <b>multiple or long methods</b>
	• some aspects <b>mocked</b> (autocompletion), occasional crashes
	• editor still feels <b>fragile</b>
	• currently <b>requires basic smalltalk knowledge</b> (e.g. press <b>: key</b> to create keyword message, even though we don''t show the colon anymore)').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Future Work');
	add: (PHLabel markup: '
	• advanced <b>refactoring tools</b>
	• <b>more</b> projections, <b>more advanced</b> projections (replace entire blocks with UI)
	• <b>storing</b> projection data
	• adapt <b>tool support</b> (VCS, debugging)
	• <b>performance optimizations</b>
	• extended <b>test suite</b> (editor should always <i>feel</i> perfectly safe)').

self addSlideWithCenterBox
	add: (PXMethodEditor doIt: 'Transcript show: ''Thank you!''; cr')