initialization
initialize

	super initialize.
	
	self
		changeTableLayout;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellInset: 10 px.
	self beTransparent.
	
	linkMorphs := OrderedCollection new.