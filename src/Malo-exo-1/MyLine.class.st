Class {
	#name : #MyLine,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #'Malo-exo-1'
}

{ #category : #'instance creation' }
MyLine class >> begin: aPoint1 end:aPoint2 [
	| myLine |
	myLine := self new.
	myLine begin: aPoint1.
	myLine end: aPoint2.
	^myLine
]

{ #category : #accessing }
MyLine >> asString [
	^begin asString, ' -> ', end asString
]

{ #category : #accessing }
MyLine >> begin [
	^begin
]

{ #category : #accessing }
MyLine >> begin: aPoint [
	begin := aPoint
]

{ #category : #accessing }
MyLine >> end [
	^end
]

{ #category : #accessing }
MyLine >> end: aPoint [
	end := aPoint
]

{ #category : #accessing }
MyLine >> grad [
	(begin x = end x)
		ifTrue: [ ^0 ].
	^(end y - begin y)/(end x - begin x)
]

{ #category : #accessing }
MyLine >> length [
	^ ((begin x - end x) ** 2 + (begin y - end y) ** 2) ** 0.5
]

{ #category : #accessing }
MyLine >> printOn: aStream [
	aStream nextPutAll: self asString
]
