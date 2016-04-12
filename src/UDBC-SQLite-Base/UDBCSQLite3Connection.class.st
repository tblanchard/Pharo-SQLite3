"
I represent a connection to an SQLite database.

"
Class {
	#name : #UDBCSQLite3Connection,
	#superclass : #UDBCSQLite3BaseConnection,
	#category : #'UDBC-SQLite-Base-Connections'
}

{ #category : #'public API - operating' }
UDBCSQLite3Connection >> execute: anSQLText [	
	^ self execute: anSQLText with: #()
]

{ #category : #'public API - operating' }
UDBCSQLite3Connection >> execute: anSQLText with: anObject [

	anObject isString
		ifTrue: [ UDBCSQLite3Error signal: 'Unable to execute SQL on instance of String.' ].
			
	^ UDBCSQLite3ResultSet new execute: anSQLText with: anObject on: self	

]