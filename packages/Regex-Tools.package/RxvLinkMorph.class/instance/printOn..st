printing
printOn: aStream

	aStream
		nextPutAll: 'a '; nextPutAll: self className;
		nextPut: $(;
		nextPutAll: self labelString;
		nextPut: $).