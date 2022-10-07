Class {
	#name : #MyPointTest,
	#superclass : #TestCase,
	#category : #'Malo-exo-1'
}

{ #category : #tests }
MyPointTest >> testPointDeclaration [
	| point |
	point := MyPoint x:3 y:4.
	self assert: point x equals: 3.
	self assert: point y equals: 4.
]

{ #category : #tests }
MyPointTest >> testPointPrint [
	| point printed |
	point := MyPoint x:3 y:4.
	printed := point asString.
	self assert: printed equals: '(3,4)'.
]
