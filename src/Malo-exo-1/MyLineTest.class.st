Class {
	#name : #MyLineTest,
	#superclass : #TestCase,
	#category : #'Malo-exo-1'
}

{ #category : #tests }
MyLineTest >> testLength [
	| line |
	line := MyLine begin: (MyPoint x:1 y:2) end: (MyPoint x:1 y:3).
	self assert: line length equals:1
]

{ #category : #tests }
MyLineTest >> testLineDeclaration [
	| line |
	line := MyLine begin: (MyPoint x:1 y:2) end: (MyPoint x:3 y:4).
	self assert: line begin x equals:1.
	self assert: line begin y equals:2.
	self assert: line end x equals:3.
	self assert: line end y equals:4.
]

{ #category : #tests }
MyLineTest >> testLineGrad [
	| line |
	line := MyLine begin: (MyPoint x:1 y:1) end: (MyPoint x:2 y:3).
	self assert: line grad equals: 2.
]

{ #category : #tests }
MyLineTest >> testLinePrint [
	| line |
	line := MyLine begin: (MyPoint x:1 y:2) end: (MyPoint x:3 y:4).
	self assert: line asString equals:'(1,2) -> (3,4)'.
]
