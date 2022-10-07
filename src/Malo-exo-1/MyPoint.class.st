Class {
	#name : #MyPoint,
	#superclass : #Object,
	#instVars : [
		'x',
		'y'
	],
	#category : #'Malo-exo-1'
}

{ #category : #'instance creation' }
MyPoint class >> x: aNumber1 y: aNumber2 [
	| point |
	point := self new.
	point x: aNumber1.
	point y: aNumber2.
	^point
]

{ #category : #accessing }
MyPoint >> asString [
	^'(',x asString,',',y asString,')'
]

{ #category : #accessing }
MyPoint >> printOn: aStream [
	aStream nextPutAll: self asString
]

{ #category : #accessing }
MyPoint >> x [
	^x
]

{ #category : #accessing }
MyPoint >> x: aNumber [
	 x:= aNumber
]

{ #category : #accessing }
MyPoint >> y [
	^y
]

{ #category : #accessing }
MyPoint >> y: aNumber [
	 y:= aNumber
]
