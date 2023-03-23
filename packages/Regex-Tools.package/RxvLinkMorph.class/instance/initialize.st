initialization
initialize

	super initialize.
	
	active := false.
	hovered := false.
	successors := OrderedCollection new.
	predecessors := OrderedCollection new.
	indirectlyActive := indirectlyHovered := false.
	
	self extent: 100 px asPoint.
	self
		cornerStyle: #rounded;
		cornerRadius: 10 px;
		borderWidth: 1 px.
	self mouseState: nil.
	
	self
		changeTableLayout;
		layoutInset: 5 px.
	
	label := TextMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		lock.
	self addMorph: label.
	self labelString: self externalName.