initialization
initialize

	super initialize.
	
	self
		beSmoothCurve;
		makeOpen;
		makeForwardArrow.
	
	indirectlyHovered := indirectlyActive := false.
	self updateDisplayStyle.