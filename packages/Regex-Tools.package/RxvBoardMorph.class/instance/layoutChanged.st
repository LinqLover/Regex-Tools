layout
layoutChanged

	super layoutChanged.
	
	(self valueOfProperty: #deferUpdateArrows) = true ifFalse:
		[self updateArrows].