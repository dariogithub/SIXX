actions-parse
parseXml: xmlStringOrStream 
	| stream |
	stream := xmlStringOrStream isString ifFalse: [xmlStringOrStream]
				ifTrue: [ReadStream on: xmlStringOrStream].
	^ ((self environment at: #XMLDOMParser) parseDocumentFrom: stream) firstElement