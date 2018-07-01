as yet unclassified
initialize04Discussion

self addSlideWithCenterBox 
	add: (PHLabel pageHeader: 'Discussion').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Speed of Usage');
	add: (PHLabel text: '
	• graphical programming generally perceived to be slower
	• early projectional editors required editing of tree structures
	• Jetbrain''s MPS uses "guessing", autocompletion and a text-editor-like layout
	• Guessing: space on a number means sending a message, + in a message name means binary message');
	add: (PXMethodEditor minimalDoIt: '42').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Expressing Intent');
	add: (PHLabel text: '
	• vim: generally perceived to boost editing speed
	• modes enable minimal number of keystrokes to express actions
	• grammar to express intent to editor');
	add: (PHImage path: (self class imagePath: 'vim.png')).

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
	add: (PHLabel text: '
	• performance: bubbles are costly, zooming not easy
	• detour via generated codestring -> parser -> compiler
	  - easier compilation
	  - versioning support
	  - can''t attach extra info for projections (e.g. regex example)
	  - unnecessary computation
	• how to display multiple or long methods
	• some aspects mocked (autocompletion), occasional crashes
	• currently requires basic smalltalk knowledge (e.g. press : to create keyword message, even though we don''t show the colon anymore)').
	
self addSlideWithCenterBox
	add: (PXMethodEditor doIt: 'Transcript show: ''Thank you!''; cr')