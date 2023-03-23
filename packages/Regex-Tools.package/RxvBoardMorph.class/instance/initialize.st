initialization
initialize

	super initialize.
	
	lanes := OrderedCollection new.
	arrows := OrderedCollection new.
	
	self
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutInset: 10 px;
		width: 600 px.
	self
		color: Color veryLightGray twiceLighter lighter;
		borderWidth: 1 px;
		borderColor: Color gray.
	
	threadMorph := CurveMorph new
		borderColor: (Color blue alpha: 1 / 3);
		borderWidth: 3 px;
		makeOpen; beSmoothCurve;
		addHandles;
		yourself.
	self addMorph: (threadMorph disableLayout: true).
	threadMorph hide.