*Regex-Tools
rxvLabel

	^ '{1} {2}' format:
		{positive ifTrue: ['positive'] ifFalse: ['negative'].
		forward ifTrue: ['lookahead'] ifFalse: ['lookbehind']}