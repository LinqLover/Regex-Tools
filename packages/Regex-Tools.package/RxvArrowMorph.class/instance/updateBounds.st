updating
updateBounds

	| end start bend |
	start := source pointAtFraction: 2 / 3 @
		((source y = target y and: [source x > target x])
			ifTrue: [1]
			ifFalse:
				[source y > target y ifFalse: [0] ifTrue: [1]]).
	end := target pointAtFraction: 1 / 3 @
		((source y = target y and: [source x > target x])
			ifTrue: [1]
			ifFalse:
				[source y >= target y ifTrue: [0] ifFalse: [1]]).
	bend := (end - start) in: (source y = target y ifTrue: [#leftRotated] ifFalse: [#rightRotated]).
	bend := bend normalized * (bend r ** 0.4).
	self setVertices:
		{start.
		(end interpolateTo: start at: 1 / 2)
			+ (bend * 3 * RealEstateAgent scaleFactor).
		end}.