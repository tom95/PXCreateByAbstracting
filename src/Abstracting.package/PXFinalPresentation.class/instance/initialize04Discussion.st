as yet unclassified
initialize04Discussion

self addSlideWithCenterBox 
	add: (PHLabel pageHeader: 'Discussion').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Speed of Usage');
	add: (PHLabel text: '
	• graphical programming generally perceived to be slower
	• early projectional editors required editing of tree structures
	
	
	TODO PICTURE').

self addSlideWithCenterBox
	add: (PHLabel text: '
	Jetbrain''s MPS uses "guessing", autocompletion and a text-editor-like layout, among other things
	
	Implementation below: mbeddr, MPS-based editor for embedded C');
	add: (PHImage path: FileDirectory default / 'mbeddr.jpg').

self addSlideWithCenterBox
	add: (PHLabel text: '
	Guessing: space on a number means sending a message, + in a message name means binary message');
	add: (PXMethodEditor minimalDoIt: '42').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Expressing Intent');
	add: (PHLabel text: '
	• vim: generally perceived to boost editing speed
	• modes enable minimal number of keystrokes to express actions
	• grammar to express intent to editor');
	add: ((PHImage path: (self class imagePath: 'vim.png')) framed: false).

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Expressing Intent');
	add: (PHLabel text: '
	• instead of acting on a textbuffer, we can on smalltalk code
	-> create grammar that expresses this clearly');
	add: (PXMethodEditor doIt: '42 squared').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Things We Learned');
	add: (PHLabel text: '
	• remove all syntax
	• visualization: new color per block, open: how to fit large bubbles on screen for an overview
	• first class undo
	• keyboard only vs mouse
	• even simple Smalltalk language has an abundance of possible actions').

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
	• currently <b>requires basic smalltalk knowledge</b> (e.g. press : to create keyword message, even though we don''t show the colon anymore)').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Future Work');
	add: (PHLabel text: '
	• advanced refactoring tools
	• more projections, more advanced projections (replace entire blocks with UI)
	• storing projection data
	• adapt tool support (VCS, debugging)
	• performance optimizations
	• extended test suite (editor should always feel perfectly safe)').

self addSlideWithCenterBox
	add: (PXMethodEditor doIt: 'Transcript show: ''Thank you!''; cr')