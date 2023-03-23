*Regex-Tools
rxvLabel

	^ 'branch ({1})' format: {self greedy ifTrue: ['greedy'] ifFalse: ['lazy']}