'From Cuis 4.2 of 25 July 2013 [latest update: #2021] on 26 June 2014 at 7:54:40.007349 pm'!
'Description Please enter a description for this package '!
!provides: 'SandstoneDB' 1 1!
!requires: 'CuisSandstoneDB-Pharo14CLayer' 1 0 nil!
!requires: 'Cuis-Network-UUID' 1 0 nil!
!requires: 'Cuis-NetworkTests-UUID' 1 0 nil!
!classDefinition: #SDError category: #'SandstoneDb-Core'!
Error subclass: #SDError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDError class' category: #'SandstoneDb-Core'!
SDError class
	instanceVariableNames: ''!

!classDefinition: #SDCommitError category: #'SandstoneDb-Core'!
SDError subclass: #SDCommitError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDCommitError class' category: #'SandstoneDb-Core'!
SDCommitError class
	instanceVariableNames: ''!

!classDefinition: #SDLoadError category: #'SandstoneDb-Core'!
SDError subclass: #SDLoadError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDLoadError class' category: #'SandstoneDb-Core'!
SDLoadError class
	instanceVariableNames: ''!

!classDefinition: #SDAbstractStore category: #'SandstoneDb-Core'!
Object subclass: #SDAbstractStore
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDAbstractStore class' category: #'SandstoneDb-Core'!
SDAbstractStore class
	instanceVariableNames: ''!

!classDefinition: #SDCachedStore category: #'SandstoneDb-Core'!
SDAbstractStore subclass: #SDCachedStore
	instanceVariableNames: 'cache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDCachedStore class' category: #'SandstoneDb-Core'!
SDCachedStore class
	instanceVariableNames: ''!

!classDefinition: #SDFileStore category: #'SandstoneDb-Store'!
SDCachedStore subclass: #SDFileStore
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Store'!
!classDefinition: 'SDFileStore class' category: #'SandstoneDb-Store'!
SDFileStore class
	instanceVariableNames: 'serializer'!

!classDefinition: #SDMemoryStore category: #'SandstoneDb-Store'!
SDCachedStore subclass: #SDMemoryStore
	instanceVariableNames: ''
	classVariableNames: 'Cache Instances'
	poolDictionaries: ''
	category: 'SandstoneDb-Store'!
!classDefinition: 'SDMemoryStore class' category: #'SandstoneDb-Store'!
SDMemoryStore class
	instanceVariableNames: ''!

!classDefinition: #SDActiveRecord category: #'SandstoneDb-Core'!
Object subclass: #SDActiveRecord
	instanceVariableNames: 'id createdOn updatedOn version isNew'
	classVariableNames: 'Store'
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDActiveRecord class' category: #'SandstoneDb-Core'!
SDActiveRecord class
	instanceVariableNames: 'lock'!

!classDefinition: #SDCheckPointer category: #'SandstoneDb-Core'!
Object subclass: #SDCheckPointer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDCheckPointer class' category: #'SandstoneDb-Core'!
SDCheckPointer class
	instanceVariableNames: ''!

!classDefinition: #SDConcurrentDictionary category: #'SandstoneDb-Core'!
Object subclass: #SDConcurrentDictionary
	instanceVariableNames: 'lock dictionary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDConcurrentDictionary class' category: #'SandstoneDb-Core'!
SDConcurrentDictionary class
	instanceVariableNames: ''!

!classDefinition: #SDRecordMarker category: #'SandstoneDb-Core'!
Object subclass: #SDRecordMarker
	instanceVariableNames: 'id className'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDRecordMarker class' category: #'SandstoneDb-Core'!
SDRecordMarker class
	instanceVariableNames: ''!

!classDefinition: #SDSerializer category: #'SandstoneDb-Store'!
Object subclass: #SDSerializer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Store'!
!classDefinition: 'SDSerializer class' category: #'SandstoneDb-Store'!
SDSerializer class
	instanceVariableNames: ''!

!classDefinition: #SDSmartRefStreamSerializer category: #'SandstoneDb-Store'!
SDSerializer subclass: #SDSmartRefStreamSerializer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Store'!
!classDefinition: 'SDSmartRefStreamSerializer class' category: #'SandstoneDb-Store'!
SDSmartRefStreamSerializer class
	instanceVariableNames: ''!


!SDError commentStamp: 'rjl 4/10/2008 21:36' prior: 0!
I'm just an abstract error!

!SDCommitError commentStamp: 'rjl 4/10/2008 21:33' prior: 0!
Clearly, I'm thrown on a commit failure, duh!!'!

!SDLoadError commentStamp: 'rjl 4/10/2008 20:24' prior: 0!
I'm thrown when an object fails to load from disk, either because the file was corrupt or because it was deleted.!

!SDAbstractStore commentStamp: 'rjl 8/10/2008 11:41' prior: 0!
I'm an abstract store to define what's necessary to plug in a new method of storing active records.  When records are stored, they are already sliced out of the graph and have markers for any other references placed in them.  The store can serialize however it sees fit, but when loading, before returning the version from the store, it should resolve the references.'!

!SDFileStore commentStamp: 'rjl 8/10/2008 11:42' prior: 0!
I'm a store for persisting active records directly to disk via a SmartReference stream with a few extentions to make it non interactive.'!

!SDMemoryStore commentStamp: 'rjl 8/10/2008 11:43' prior: 0!
I'm a store for persisting active records directly to a dictionary to show what a minimal implementation of a store must to do pass the unit tests.!

!SDActiveRecord commentStamp: '<historical>' prior: 0!
I'm the core of a simple object database based upon a mix of several patterns intended for use with *small* Seaside based web applications.  I am not meant to scale to millions of records, just tens of thousands, but for prototyping and small office applications where the number of records are in the thousands and the number of concurrent users can be handled by a single Squeak image.  To use me, simply subclass me and restart your image that's it.  

For more information see http://onsmalltalk.com/programming/smalltalk/sandstonedb-simple-activerecord-style-persistence-in-squeak/
!

!SDCheckPointer commentStamp: 'rjl 8/5/2008 09:17' prior: 0!
I run as a background process to ensure the database is loaded and periodically save the image when enough active records are found to be newer than the image.  This is essentially just like flushing the contents of a transaction log to the main database file.!

!SDConcurrentDictionary commentStamp: 'rjl 5/9/2008 20:58' prior: 0!
A SDConcurrentDictionary is just a dictionary wrapper so I can wrap a critical around mutating methods I need in ActiveRecord!

!SDRecordMarker commentStamp: 'rjl 4/10/2008 21:32' prior: 0!
I exist to mark a reference to another object in the serialized file, I'm replaced by a real object when I'm deserialized.  I'm basically a manually invoked proxy being used because getting a real proxy that inherits from ProtoObject to serialize seemed hurculean.!

!Object methodsFor: '*sandstonedb-testing' stamp: 'sas 4/9/2008 13:20'!
isSandstoneActiveRecord
	"Answers true if the receiver is
	a Sandstone Active Record."

	^ false! !

!Object methodsFor: '*sandstonedb-testing' stamp: 'rjl 7/8/2008 15:40'!
isSandstoneMarker
	^ false! !

!Object methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 6/29/2011 20:59'!
sandstoneDeepCopyVisits: visitedParts 
	"sandstoneDeepCopy works just like deepCopy until it hits another active record
	at which point the copying stops, and the actual references is returned."
	| newObject class index value |
	visitedParts at: self ifPresent: [ :it | ^ it ].
	class := self class.
	class isVariable 
		ifTrue: 
			[ index := self basicSize.
			newObject := class basicNew: index.
			[ index > 0 ] whileTrue: 
				[ newObject 
					basicAt: index
					put: ((self basicAt: index) sandstoneDeepCopyVisits: visitedParts).
				index := index - 1 ] ]
		ifFalse: [ newObject := class basicNew ].
	visitedParts at: self put: newObject.
	index := class instSize.
	[ index > 0 ] whileTrue: 
		[ value := self instVarAt: index.
		newObject 
			instVarAt: index
			put: (value isSandstoneActiveRecord 
					ifTrue: [ value ]
					ifFalse: [ value sandstoneDeepCopyVisits: visitedParts ]).
		index := index - 1 ].
	^ newObject! !

!Object methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:30'!
sandstoneMarkReferencesVisits: visitedParts 
	"Mark components of the introspectee which are 
	Sandstone active records to become references.
	Do this deeply (sub components)."
	self class isMeta ifTrue: [ ^ self ].
	visitedParts at: self ifPresent: [:it | ^ it ].
	visitedParts at: self put: self.
	self class allInstVarNames do: 
		[ :name | 
		| var |
		var := self instVarNamed: name.
		var isSandstoneActiveRecord 
			ifTrue: 
				[ self 
					instVarNamed: name
					put: var asReferenceMarker ]
			ifFalse: [ var sandstoneMarkReferencesVisits: visitedParts ] ].
	^ self! !

!Object methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:30'!
sandstoneResolveReferencesVisits: visitedParts 
	"Mark components of the introspectee which are 
	Sandstone references to active record to become active records.
	Do this deeply (sub components)."
	self class isMeta ifTrue: [ ^ self ].
	visitedParts at: self ifPresent: [:it | ^ it ].
	visitedParts at: self put: self.
	self class allInstVarNames do: 
		[ :name | 
		| var |
		var := self instVarNamed: name.
		(var isSandstoneMarker) 
			ifTrue: 
				[ self 
					instVarNamed: name
					put: var asOriginalObject ]
			ifFalse: [ var sandstoneResolveReferencesVisits: visitedParts ] ].
	^ self! !

!Class methodsFor: '*SandstoneDb' stamp: 'RamonLeon 3/31/2011 21:36'!
sandstoneDeepCopyVisits: aCollection 
	SDCommitError signal: 'An ActiveRecord can not reference a class or another object that references a class. '! !

!Boolean methodsFor: '*sandstonedb' stamp: 'rjl 5/12/2008 22:33'!
sandstoneDeepCopyVisits: visitedParts
	^ self! !

!Boolean methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 13:36'!
sandstoneMarkReferencesVisits: visitedParts
	^ self! !

!Boolean methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:55'!
sandstoneResolveReferencesVisits: visitedParts 
	^ self! !

!ArrayedCollection methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 6/29/2011 20:50'!
sandstoneDeepCopyVisits: visitedParts 
	"sandstoneDeepCopy works just like deepCopy until it hits another active record
	at which point the copying stops, and the actual references is returned."
	| newObject |
	visitedParts at: self ifPresent: [ :it | ^ it ].
	newObject := self copy.
	visitedParts at: self put: newObject.
	"optimized implementation taking advantaged of ordering"
	newObject doWithIndex: 
		[ :each :index | 
		each isSandstoneActiveRecord ifFalse: 
			[ newObject 
				at: index
				put: (each sandstoneDeepCopyVisits: visitedParts) ] ].
	^ newObject! !

!ArrayedCollection methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:30'!
sandstoneMarkReferencesVisits: visitedParts 
	"Mark components of the introspectee which are 
	Sandstone active records to become references.
	Do this deeply (sub components)."
	self class isMeta ifTrue: [ ^ self ].
	visitedParts at: self ifPresent: [:it | ^ self ].
	visitedParts at: self put: self.
	self doWithIndex: 
		[ :each :index | 
		each isSandstoneActiveRecord 
			ifTrue: [ self at: index put: each asReferenceMarker ]
			ifFalse: [ each sandstoneMarkReferencesVisits: visitedParts ] ].
	^ self! !

!ArrayedCollection methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:49'!
sandstoneResolveReferencesVisits: visitedParts 
	"Make components of the introspectee which are 
	Sandstone references to active record to become active records.
	Do this deeply (sub components)."
	self class isMeta ifTrue: [ ^ self ].
	visitedParts at: self ifPresent: [ :it | ^ it ].
	visitedParts at: self put: self.
	"It is crucial to modify the introspectee by iterating a copy of it"
	self copy doWithIndex: 
		[ :each :index | 
		each isSandstoneMarker 
			ifTrue: [ self at: index put: each asOriginalObject ]
			ifFalse: [ each sandstoneResolveReferencesVisits: visitedParts ] ].
	^ self! !

!String methodsFor: '*sandstonedb-serialization' stamp: 'rjl 5/12/2008 22:36'!
sandstoneDeepCopyVisits: visitedParts
	^ self shallowCopy! !

!String methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:37'!
sandstoneMarkReferencesVisits: visitedParts
	^ self! !

!String methodsFor: '*sandstonedb-serialization' stamp: 'rjl 8/3/2008 00:21'!
sandstoneResolveReferencesVisits: visitedParts 
	^ self! !

!Semaphore methodsFor: '*SandstoneDb' stamp: 'RamonLeon 3/31/2011 21:36'!
sandstoneDeepCopyVisits: aCollection 
	SDCommitError signal: 'An ActiveRecord can not reference a semaphore or another object that references a semaphor. '! !

!Set methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 14:20'!
sandstoneResolveReferencesVisits: visitedParts
	super sandstoneResolveReferencesVisits: visitedParts.
	self rehash.
	^ self! !

!Dictionary methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 14:20'!
sandstoneResolveReferencesVisits: visitedParts
	super sandstoneResolveReferencesVisits: visitedParts.
	self rehash.
	^ self! !

!FileDirectory methodsFor: '*sandstonedb' stamp: 'gsa 11/22/2012 14:25'!
sandstoneRename: oldFileName toBe: newFileName
	| oldName newName |
	"a non interactive version of rename that won't promp the UI on failure"
	oldName := self fullNameFor: oldFileName.
	newName := self fullNameFor: newFileName.
	(StandardFileStream 
		retryWithGC:["self primRename: oldName asVmPathName to: newName asVmPathName" self primRename: oldName to: newName]
		until:[:result| result notNil]
		forFileNamed: oldName) ~~ nil ifTrue:[^self].
	(self fileExists: oldFileName) ifFalse:[
		^self error:'Attempt to rename a non-existent file'.
	].
	^self error:'Failed to rename file'.! !

!FileDirectory methodsFor: '*sandstonedb' stamp: 'rjl 8/5/2008 22:48'!
withSubdirectoriesDo: aBlock 
	self directoryNames do: [ :n | aBlock value: (self directoryNamed: n) ]! !

!InstructionStream methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 9/9/2011 14:40'!
sandstoneDeepCopyVisits: visitedParts 
	SDCommitError signal: 'An ActiveRecord can not reference any sub instances of instruction stream.  Make sure you are not saving blocks. '! !

!Character methodsFor: '*sandstonedb' stamp: 'rjl 5/12/2008 22:34'!
sandstoneDeepCopyVisits: visitedParts
	^ self! !

!Character methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 13:36'!
sandstoneMarkReferencesVisits: visitedParts
	^ self! !

!Character methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:55'!
sandstoneResolveReferencesVisits: visitedParts 
	^ self! !

!Number methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:46'!
sandstoneDeepCopyVisits: visitedParts
	^ self! !

!Number methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 13:37'!
sandstoneMarkReferencesVisits: visitedParts
	^ self! !

!Number methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:44'!
sandstoneResolveReferencesVisits: visitedParts 
	^ self! !

!Integer methodsFor: '*sandstonedb' stamp: 'rjl 4/10/2008 10:08'!
asReducedSumOfDigits
	"Answers the sum of the digits present in the 
	decimal representation of the receiver 
	but also repeating the procedure if the 
	answers is greater than 9."
	^ 10 <= self 
		ifFalse: [ self ]
		ifTrue: 
			[ self = 10 
				ifTrue: [ 0 ]
				ifFalse: 
					[ (self asString 
						inject: 0
						into: [ :sum :e | sum + e digitValue ]) asReducedSumOfDigits ] ]! !

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/14/2008 08:56'!
fileNamed: aName do: aBlock 
	| file |
	file := self fileNamed: aName.
	^ file 
		ifNil: [ nil ]
		ifNotNil: [ [ aBlock value: file ] ensure: [ file close ] ]! !

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/14/2008 08:57'!
newFileNamed: aName do: aBlock 
	| file |
	file := self newFileNamed: aName.
	^ file 
		ifNil: [ nil ]
		ifNotNil: [ [ aBlock value: file ] ensure: [ file close ] ]! !

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/14/2008 08:57'!
oldFileNamed: aName do: aBlock 
	| file |
	file := self oldFileNamed: aName.
	^ file 
		ifNil: [ nil ]
		ifNotNil: [ [ aBlock value: file ] ensure: [ file close ] ]! !

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/12/2008 16:51'!
readOnlyFileNamed: aString
	| strm |
	strm := self on: (FileStream readOnlyFileNamed: aString).
	strm byteStream setFileTypeToObject.
	^ strm! !

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/14/2008 08:56'!
readOnlyFileNamed: aName do: aBlock 
	| file |
	file := self readOnlyFileNamed: aName.
	^ file 
		ifNil: [ nil ]
		ifNotNil: [ [ aBlock value: file ] ensure: [ file close ] ]! !

!SmartRefStream methodsFor: '*sandstonedb' stamp: 'rjl 8/12/2008 08:11'!
sandstoneNextAndClose
	"Speedy way to grab one object. Only use when we are inside an object
	binary file.I created my own version of nextAndClose to get rid of the 
	interactive stuff the real one tries to do.  If I fail, then I fail, so be it"
	| obj |
	byteStream peek = ReferenceStream versionCode ifFalse: [ SDLoadError signal: 'old object file' ].
	obj := self next.
	self close.
	^ obj! !

!SmartRefStream methodsFor: '*sandstonedb' stamp: 'RamonLeon 3/15/2011 15:17'!
sandstoneNextPutObjOnly: anObject 
	"Really write three objects: (version, class structure, object).  But only when called from the outside.  Not in fileOut format.  No class definitions will be written for instance-specific classes.  Error if find one.  (Use nextPut: instead)"
	| info |
	topCall 
		ifNil: 
			[ topCall := anObject.
			super nextPut: ReferenceStream versionCode.
			info := self instVarInfo: anObject.
			objCount := 0.
			super nextPut: info.
			super nextPut: anObject.	"<- the real writing"
			"Class inst vars not written here!!"
			topCall := nil
			"references is an IDict of every object that got written
			(in case you want to take statistics)"
			"Transcript cr; show: structures keys printString."	"debug"	"reset it" ]
		ifNotNil: [ super nextPut: anObject ]! !

!UndefinedObject methodsFor: '*sandstonedb' stamp: 'rjl 5/12/2008 22:37'!
sandstoneDeepCopyVisits: visitedParts
	^ self! !

!UndefinedObject methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 13:37'!
sandstoneMarkReferencesVisits: visitedParts
	^ self! !

!UndefinedObject methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:53'!
sandstoneResolveReferencesVisits: visitedParts 
	^ self! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/14/2008 16:48'!
abortChanges: anObject
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:19'!
commit: aBlock
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'defaults' stamp: 'rjl 8/14/2008 15:37'!
defaultCacheSize
	^ 10000! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/14/2008 13:39'!
ensureDown! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/10/2008 11:46'!
ensureForClass: aClass 
	"at startUp, the store is sent this message to tell it to make sure it's ready to run, a
	file store for instance may want to make sure it's directories exist"
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:41'!
forClass: aClass 
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:23'!
forClass: aClass at: anId ifAbsent: aHandler
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:24'!
forClass: aClass detect: aBlock ifFound: aHandler
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:24'!
forClass: aClass detect: aBlock ifNone: aHandler
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'RamonLeon 4/30/2011 18:07'!
forClass: aClass do: aBlock
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:27'!
forClass: aClass findAll: aBlock
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/14/2008 20:50'!
loadClass: aClass atId: anId 
	"Given a class and an Id, the store is expected to load a fresh copy of the object 
	from it's persistent medium'"
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/10/2008 11:49'!
recoverForClass: aClass
	"The store is expected to loop through all it's stored instances of a class and
	load them via cachedLoadFrom: on the class which will dispatch back to 
	loadObjectOfClass:atId on the store when a cached version of the object is not found.
	This happens once per class at system startup"
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:13'!
removeObject: anObject 
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:13'!
storeObject: anObject 
	self subclassResponsibility! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/15/2008 01:32'!
updateObject: anObject 
	self subclassResponsibility! !

!SDAbstractStore class methodsFor: 'actions' stamp: 'RamonLeon 5/9/2011 11:53'!
install
	"convience method for quickly installing a new store"

	[ SDActiveRecord
		setStore: self new;
		warmUpAllClasses ] forkAt: Processor userBackgroundPriority named: 'loading new store'! !

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:09'!
abortChanges: anObject 
	| diskVersion |
	anObject critical: 
		[ self 
			removeCachedOfClass: anObject class
			from: anObject id.
		diskVersion := self 
			cachedLoadOfClass: anObject class
			from: anObject id.
		diskVersion 
			ifNil: 
				[ self 
					addCachedOfClass: anObject class
					at: anObject id
					put: anObject ]
			ifNotNil: [ anObject becomeForward: diskVersion ] ]! !

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/21/2011 23:01'!
addCachedOfClass: aClass at: anId put: anObject
	(cache at: aClass) at: anId put: anObject! !

!SDCachedStore methodsFor: 'queries' stamp: 'gsa 11/22/2012 14:29'!
cachedLoadOfClass: aClass from: anId
	^ (cache at: aClass)
		at: anId
		ifAbsent: [ 
			(self loadClass: aClass atId: anId)
				" gsa ifNotNilDo:" ifNotNil: [ :it | 
					"seems I have to make sure to cache the object before I can resolve 
				it's references so any backreferences to it don't try and load from 
				disk again''"
					(cache at: aClass) at: anId put: it.
					it sandstoneResolveReferences ] ]! !

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:06'!
ensureForClass: aClass
	cache 
		at: aClass 
		ifAbsentPut: [ SDConcurrentDictionary on: (Dictionary new: self defaultCacheSize) ]! !

!SDCachedStore methodsFor: 'delegated queries' stamp: 'RamonLeon 4/21/2011 23:44'!
familyForClass: aClass 
	^ aClass allSubclasses 
		inject: (cache at: aClass) 
		into: [ :sum :subclass | sum , (cache at: subclass)  ]! !

!SDCachedStore methodsFor: 'delegated queries' stamp: 'rjl 5/23/2009 17:47'!
forClass: aClass 
	^ (self familyForClass: aClass) ! !

!SDCachedStore methodsFor: 'actions' stamp: 'gsa 11/22/2012 14:31'!
forClass: aClass at: anId ifAbsent: aHandler
	aClass withAllSubclasses
		do: [ :class | ((cache at: class) at: anId ifAbsent: [ nil ]) 
			"gsa ifNotNilDo:" ifNotNil: [ :result | ^ result ] ].
	^ aHandler value! !

!SDCachedStore methodsFor: 'delegated queries' stamp: 'gsa 11/22/2012 14:33'!
forClass: aClass detect: aBlock ifFound: aHandler
	aClass withAllSubclasses
		do: [ :class | 
			((cache at: class) detect: aBlock ifNone: [ nil ])
				"gsa ifNotNilDo:" ifNotNil: [ :found | 
					aHandler value: found.
					^ found ] ].
	^ nil! !

!SDCachedStore methodsFor: 'delegated queries' stamp: 'gsa 11/22/2012 14:35'!
forClass: aClass detect: aBlock ifNone: aHandler 
	aClass withAllSubclasses
		do: [ :class | 
			((cache at: class) detect: aBlock ifNone: [ nil ])
				"gsa ifNotNilDo:" ifNotNil: [ :found | ^ found ] ].
	^ aHandler value! !

!SDCachedStore methodsFor: 'delegated queries' stamp: 'RamonLeon 4/21/2011 23:59'!
forClass: aClass do: aBlock
	aClass withAllSubclasses do: [ :class | (cache at: class) do: aBlock ]! !

!SDCachedStore methodsFor: 'delegated queries' stamp: 'RamonLeon 4/22/2011 00:10'!
forClass: aClass findAll: aBlock 
	| result |
	result := Dictionary new.
	aClass withAllSubclasses do: [:class | 
		result addAll: ((cache at: class) select: aBlock) ].
	^ result! !

!SDCachedStore methodsFor: 'initialize-release' stamp: 'RamonLeon 4/21/2011 22:58'!
initialize
	super initialize.
	self initializeCache! !

!SDCachedStore methodsFor: 'initialize-release' stamp: 'RamonLeon 4/22/2011 08:57'!
initializeCache
	cache := Dictionary new! !

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/21/2011 23:02'!
removeCachedOfClass: aClass from: anId 
	"calling delete multiple times shouldn't cause an error"
	^ (cache at: aClass) removeKey: anId
		ifAbsent: [ nil ]! !

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:08'!
removeObject: anObject
	self removeCachedOfClass: anObject class from: anObject id! !

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/21/2011 23:28'!
storeObject: anObject 
	self 
		addCachedOfClass: anObject class
		at: anObject id
		put: anObject.! !

!SDFileStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:20'!
commit: aBlock
	self shouldNotImplement! !

!SDFileStore methodsFor: 'defaults' stamp: 'gsa 12/16/2012 18:59'!
defaultBaseDirectory
	"you can override this if you want to force the db somewhere else"
	^ FileDirectory default directoryNamed: 
		(FileDirectory baseNameFor: 
			(FileDirectory localNameFor: 
				Smalltalk imageName)) , '.SandstoneDb'! !

!SDFileStore methodsFor: 'crash recovery' stamp: 'gsa 12/16/2012 18:59'!
deleteFailedCommitsForClass: aClass 
	"all remaining .new files are failed commits, kill them"
	
	[ (self dirForClass: aClass) fullNamesOfAllFilesInSubtree 
		select: [ :each | each endsWith: '.new' ]
		thenDo: [ :each | FileDirectory deleteFilePath: each ] ] 
		on: Error
		do: [ :err | Transcript show: err ]! !

!SDFileStore methodsFor: 'queries' stamp: 'gsa 11/24/2012 15:02'!
dirForClass: aClass 
	"compute the path of superclasses all the way up to ActiveRecord, storing 
	subclass records as a subdirectory of the superclasses directory 
	allows ActiveRecord to deal with inheritance"
	| parentClass lineage |
	aClass == SDActiveRecord ifTrue: 
		[ Error signal: 'ActiveRecord itself is abstract, you must only  
 store subclasses' ].
	lineage := OrderedCollection with: aClass.
	parentClass := aClass superclass.
	[ parentClass == SDActiveRecord ] whileFalse: 
		[ lineage addFirst: parentClass.
		parentClass := parentClass superclass ].
	^ lineage 
		inject: self defaultBaseDirectory
		into: [ :dir :each | dir directoryNamed: each name ]! !

!SDFileStore methodsFor: 'queries' stamp: 'gsa 11/24/2012 15:02'!
dirForClass: aClass atId: anId 
	"Grab the correct hashed subdirectory for this record"
	^ (self dirForClass: aClass) directoryNamed: (self dirNameFor: anId)! !

!SDFileStore methodsFor: 'queries' stamp: 'rjl 8/10/2008 00:17'!
dirNameFor: anId 
	"Answers a string with one decimal digit corresponding to anId.  There is a bug
	in this that does not ever hash to the directory 1, but because of existing datasets
	this must remain, do not want to rehash my databases and it is no big deal"
	self flag: #knownBug.
	^ (anId inject: 0 into: [ : sum : e | sum + e asInteger ]) asReducedSumOfDigits asString! !

!SDFileStore methodsFor: 'actions' stamp: 'gsa 12/16/2012 18:57'!
ensureDown
	self initializeCache ! !

!SDFileStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:07'!
ensureForClass: aClass 
	| dir |
	super ensureForClass: aClass.
	dir := (self dirForClass: aClass) assureExistence.
	0 
		to: 9
		do: [ :num | (dir directoryNamed: num asString) assureExistence ].
! !

!SDFileStore methodsFor: 'queries' stamp: 'rjl 8/14/2008 20:44'!
familyForClass: aClass 
	"I'm returing raw cache dictionary here because this read only copy
	doesn't need concurrency protection, just a naked dictionary''"
	^ aClass allSubclasses 
		inject: (cache at: aClass) dictionary
		into: [ :sum :subclass | sum , (cache at: subclass) dictionary ]! !

!SDFileStore methodsFor: 'crash recovery' stamp: 'gsa 11/22/2012 07:40'!
finishPartialCommitsForClass: aClass 
	"find where .new exists but .obj doesn't, rename .obj.new to
	.obj to finish commit'"
	
	[ (self dirForClass: aClass) fullNamesOfAllFilesInSubtree 
		select: [ :each | each endsWith: '.obj.new' ]
		thenDo: 
			[ :each | 
			| objFile dir |
			objFile := FileDirectory localNameFor: (each 
					copyReplaceAll: '.new'
					with: '').
			dir := FileDirectory forFileName: each.
			(dir fileExists: objFile) ifFalse: 
				[ dir 
					rename: (FileDirectory localNameFor: each)
					toBe: objFile ] ] ] 
		on: Error
		do: 
			[ :err | 
			Transcript
				newLine; show: err.]! !

!SDFileStore methodsFor: 'crash recovery' stamp: 'gsa 11/22/2012 10:06'!
loadChangesForClass: aClass 
	| id obj |
	(self dirForClass: aClass) withSubdirectoriesDo: [ :dir | 
		[ dir entries do: 
			[ :each | 
			"there could be tens of thousands of entries, so using do with 
			a condition to avoid the copy a select would generate"
			each isDirectory ifFalse: 
				[ id := each name copyUpTo: $..
				obj := (cache at: aClass) at: id ifAbsent: [ nil ].
				obj 
					ifNil: [ self cachedLoadOfClass: aClass from:  id ]
					ifNotNil: [ obj abortChanges ] ] ] ]
			on: Error
			do: [ :err | Transcript 	newLine; show: err.] ]! !

!SDFileStore methodsFor: 'actions' stamp: 'RamonLeon 10/9/2012 09:15'!
loadClass: aClass atId: anId
	[ 
	| obj name |
	name := (self dirForClass: aClass atId: anId) fullNameFor: anId , '.obj'.
	obj := self class serializer materializeFromFile: name.
	^ obj
		onLoad;
		yourself ] on: Error do: [ :err | SDLoadError signal: 'Loading id=' , anId , '. ' , err messageText ]! !

!SDFileStore methodsFor: 'actions' stamp: 'rjl 8/10/2008 01:24'!
recoverForClass: aClass 
	self
		finishPartialCommitsForClass: aClass;
		deleteFailedCommitsForClass: aClass;
		loadChangesForClass: aClass! !

!SDFileStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:08'!
removeObject: anObject
	| dir |
	super removeObject: anObject.
	dir := self dirForClass: anObject class atId: anObject id.	
	"kill all versions or failed commits of this object"
	dir
		deleteFileNamed: anObject id , '.obj';
		deleteFileNamed: anObject id , '.new';
		deleteFileNamed: anObject id , '.old'! !

!SDFileStore methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 10:14'!
storeObject: origObject
	"The basic idea here is to make a save as atomic as possible and no data 
	is corrupted, no partial writes, thus renaming files as atomic."

	| currentVersion newVersion oldVersion dir anObject |
	super storeObject: origObject.
	anObject := origObject sandstoneDeepCopy sandstoneMarkReferences.
	dir := self dirForClass: anObject class atId: anObject id.
	currentVersion := dir fullNameFor: anObject id , '.obj'.
	newVersion := currentVersion , '.new'.
	oldVersion := currentVersion , '.old'.	"just in case a previous commit failed and left junk around"
	dir deleteFileNamed: newVersion.	"the flush ensures all data is actually written to disk before moving on"
	self class serializer serialize: anObject toFile: newVersion.
	dir deleteFileNamed: oldVersion.	"the pre-commit, on first save there won't be a current version, and fileExists is 
	too expensive to check when it'll always be there except on first save"
	[ dir sandstoneRename: currentVersion toBe: oldVersion ]
		ifError: [ 
			"just ignore it"
			 ].	"now the actual commit"
	dir sandstoneRename: newVersion toBe: currentVersion.	"clean up the junk (could fail if OS has lock on it for some reason)"
	dir deleteFileNamed: oldVersion! !

!SDFileStore methodsFor: 'actions' stamp: 'rjl 8/15/2008 01:32'!
updateObject: anObject
	self storeObject: anObject! !

!SDFileStore class methodsFor: 'accessing' stamp: 'RamonLeon 5/31/2011 10:03'!
serializer
	^ serializer ifNil: [ serializer := SDSmartRefStreamSerializer new ]! !

!SDFileStore class methodsFor: 'accessing' stamp: 'RamonLeon 5/31/2011 10:03'!
serializer: aSerializer
	serializer := aSerializer! !

!SDMemoryStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:20'!
commit: aBlock
	self shouldNotImplement! !

!SDMemoryStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:04'!
loadClass: aClass atId: anId 
	^ (Instances at: anId) sandstoneResolveReferences! !

!SDMemoryStore methodsFor: 'actions' stamp: 'gsa 12/16/2012 18:58'!
recoverForClass: aClass 
	
	"Instances keysDo: [:e | self cachedLoadOfClass: aClass from: e]"

	(Instances associationsSelect: [ :a | a value class == aClass ]) 
		keysDo: [ :e |  self cachedLoadOfClass: aClass from:  e ]! !

!SDMemoryStore methodsFor: 'actions' stamp: 'gsa 12/16/2012 18:58'!
removeObject: anObject 
	super removeObject: anObject.
	Instances removeKey: anObject id ifAbsent: []! !

!SDMemoryStore methodsFor: 'actions' stamp: 'gsa 12/16/2012 18:59'!
storeObject: anObject 
	super storeObject: anObject.
	Instances 
		at: anObject id
		put: anObject sandstoneDeepCopy sandstoneMarkReferences! !

!SDMemoryStore methodsFor: 'actions' stamp: 'gsa 12/16/2012 18:59'!
updateObject: anObject
	self storeObject: anObject! !

!SDMemoryStore class methodsFor: 'initialization' stamp: 'RamonLeon 4/22/2011 09:03'!
initialize
	"self initialize"
	Instances := Dictionary new
	! !

!SDActiveRecord methodsFor: 'comparing' stamp: 'RamonLeon 4/22/2011 19:31'!
= anObject 
	"asking the object isMemberOf ensures that if it's a proxy that message 
	will be forwarded to the real object.  Checking this condition in reverse
	anObject class, will fail because anObject class will be the ProxyClass"

	^ (anObject isMemberOf: self class) and: [ id = anObject id ]! !

!SDActiveRecord methodsFor: 'actions' stamp: 'rjl 8/14/2008 16:48'!
abortChanges
	"Rollback object to the last saved version"
	Store abortChanges: self.
! !

!SDActiveRecord methodsFor: 'converting' stamp: 'RamonLeon 5/5/2011 14:43'!
asReferenceMarker
	isNew
		ifTrue: [ 
			"You may reach this point several times before you get the intended use of this framework. This is 
		expected **by design** to make atomic saves really small and consistent. Commits of active records
		which have other active records as parts (at any depth) are restricted intentionally. They are only 
		allowed when all its sub active records are previously commited.  
		
		Only the programmer knows the proper logical commit order for his data!! This is not a relational database
		or an object database, its a filesystem database meant only to make an image crash proof and files
		aren't transactional, if you absolutely need several objects to be atomically saved, then you should make 
		them all part of a single aggregate cluster, all of your objects should not be active records, only your aggregate 
		roots are active records.  
		
		For example, an Order would be an ActiveRecord while its LineItem's would simply inherit from Object.  The
		Order and all its line items would be atomically saved as a single file by Order id.  You could not query for
		a line item directly to update it, you would query for the order, its aggregate root, do your work, and 
		commit the order.  An aggregate root is the natural query and transactional boundry for the domain.
		See Eric Evans Domain Driven Design for more information about this way of thinking.
		
		Do not try to rig your objects up to cascade save, to do so is to be missing the point of this 
		framework: Simplicity. This is not an OODB where you call commit once and you hope everything
		magically saves correctly.  One record should not be saving another.  Saves are something best done
		in your controller methods explicitly.  Save your new objects first, then make one reference the other, then
		save the modified one again. This pattern is simple and it works without magic that will confuse you and it 
		will force you to confront failure scenarios where one record saves successfully but the other doesn't.  Trying 
		to hide this behind cascading saves only hides from the programmer the fact that each save is atomic but multiple 
		saves are not."
			SDCommitError
				signal:
					'An object is being saved while referencing an unsaved record of type ' , self class name
						, '.  You must save that record first!!' ].
	^ (SDRecordMarker new)
		id: id;
		className: self class name;
		yourself! !

!SDActiveRecord methodsFor: 'accessing' stamp: 'rjl 4/26/2008 22:26'!
createdOn
	^ createdOn! !

!SDActiveRecord methodsFor: 'actions' stamp: 'RamonLeon 5/5/2011 14:08'!
critical: aBlock
	^ self class lock critical: aBlock! !

!SDActiveRecord methodsFor: 'actions' stamp: 'rjl 8/14/2008 15:19'!
delete
	"I'm using monitors for locking so this can be wrapped in larger critical
	in your application code if you want more scope on the critical'"
	self critical: 
		[ self onBeforeDelete.
		Store removeObject: self.
		self onAfterDelete.
		self initialize ]! !

!SDActiveRecord methodsFor: 'testing' stamp: 'RamonLeon 4/22/2011 19:31'!
hash
	^ id hash! !

!SDActiveRecord methodsFor: 'accessing' stamp: 'rjl 1/16/2008 18:40'!
id
	^ id! !

!SDActiveRecord methodsFor: 'initialize-release' stamp: 'RamonLeon 4/19/2011 21:24'!
initialize
	super initialize.
	id ifNil: [ id := UUID new asString36 ].
	createdOn := updatedOn := DateAndTime now.
	version := 0.
	isNew := true! !

!SDActiveRecord methodsFor: 'testing' stamp: 'rjl 5/12/2008 20:43'!
isNew
	"Only answers true before an objects first save."
	^ isNew ifNil: [ isNew := true ]! !

!SDActiveRecord methodsFor: 'testing' stamp: 'rjl 5/12/2008 20:43'!
isSandstoneActiveRecord
	"Answers true if the receiver is a Sandstone Active Record."
	^ true! !

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/27/2008 02:16'!
onAfterDelete
	"for overriding in subclasses to hook the objects lifecycle"
	! !

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/27/2008 02:29'!
onAfterFirstSave
	"for overriding in subclasses to hook the objects lifecycle"
	! !

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/27/2008 02:29'!
onAfterSave
	"for overriding in subclasses to hook the objects lifecycle"
	! !

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/27/2008 02:29'!
onBeforeDelete
	"for overriding in subclasses to hook the objects lifecycle"
	! !

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/26/2010 15:15'!
onBeforeFirstSave
	"for overriding in subclasses to hook the objects lifecycle"
	createdOn := DateAndTime now! !

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/26/2010 15:15'!
onBeforeSave
	"for overriding in subclasses to hook the objects lifecycle"
	updatedOn := DateAndTime now.
	version := version + 1.
	isNew := false! !

!SDActiveRecord methodsFor: 'events' stamp: 'RamonLeon 9/9/2011 14:34'!
onLoad
	"for overriding in subclasses to hook the objects lifecycle"
	! !

!SDActiveRecord methodsFor: 'copying' stamp: 'NicolasPetton 4/27/2011 12:19'!
postCopy
	super postCopy.
	id := UUID new asString36.
	createdOn := updatedOn := DateAndTime now.
	version := 0.
	isNew := true! !

!SDActiveRecord methodsFor: 'serialization' stamp: 'rjl 10/31/2009 15:19'!
sandstoneDeepCopy
	"Replaces the receiver (sub) active records 
	with Sandstone references where it is needed"
	^ self sandstoneDeepCopyVisits: self class defaultIdentityDictionary! !

!SDActiveRecord methodsFor: 'serialization' stamp: 'rjl 10/31/2009 15:19'!
sandstoneMarkReferences
	"Replaces the receiver (sub) active records 
	with Sandstone references where it is needed"
	^ self sandstoneMarkReferencesVisits: self class defaultIdentityDictionary! !

!SDActiveRecord methodsFor: 'serialization' stamp: 'rjl 10/31/2009 15:19'!
sandstoneResolveReferences
	"Replaces the receiver markers with
	active records where it is needed"
	^ self sandstoneResolveReferencesVisits: self class defaultIdentityDictionary! !

!SDActiveRecord methodsFor: 'actions' stamp: 'gsa 11/24/2012 15:00'!
save
	"I'm using monitors for locking so this can be wrapped in larger critical
	in your application code if you want more scope on the critical'"
	| isFirstSave |
	^ self critical: 
		[ self validate.
		(isFirstSave := isNew) ifTrue: [ self onBeforeFirstSave ].
		self onBeforeSave.
		isFirstSave 
			ifTrue: [Store storeObject: self] 
			ifFalse: [Store updateObject: self].
		isFirstSave ifTrue: [ self onAfterFirstSave ].
		self onAfterSave.
		self ]! !

!SDActiveRecord methodsFor: 'actions' stamp: 'rjl 8/9/2008 22:32'!
save: aBlock 
	^ self critical: 
		[ aBlock value.
		self save ]! !

!SDActiveRecord methodsFor: 'accessing' stamp: 'rjl 3/31/2008 14:17'!
updatedOn
	^ updatedOn! !

!SDActiveRecord methodsFor: 'actions' stamp: 'rjl 3/31/2008 14:17'!
validate
	"for subclasses to override and throw exceptions to prevent saves"! !

!SDActiveRecord methodsFor: 'accessing' stamp: 'rjl 3/31/2008 14:17'!
version
	^ version! !

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 8/5/2008 11:14'!
atId: anId 
	"hitting this in a tight loop for a class with subclasses can be very expensive
	because allCaches has to concatenate all the subclasses caches into a new copy
	that contains all subclass records"
	^ self 
		atId: anId
		ifAbsent: [ nil ]! !

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 8/14/2008 20:22'!
atId: anId ifAbsent: aHandler 
	"hitting this in a tight loop for a class with subclasses can be very expensive
	because allCaches has to concatenate all the subclasses caches into a new copy
	that contains all subclass records"
	^  Store forClass: self at: anId ifAbsent: aHandler! !

!SDActiveRecord class methodsFor: 'actions' stamp: 'rjl 8/11/2008 20:26'!
commit: aBlock 
	^ Store commit: aBlock! !

!SDActiveRecord class methodsFor: 'actions' stamp: 'RamonLeon 5/5/2011 14:06'!
coolDown
	lock := nil.
	self ensureReady! !

!SDActiveRecord class methodsFor: 'defaults' stamp: 'rjl 7/14/2009 10:22'!
defaultHashSize
	^ 100! !

!SDActiveRecord class methodsFor: 'defaults' stamp: 'gsa 12/16/2012 18:55'!
defaultIdentityDictionary 
	^ IdentityDictionary new: self defaultHashSize ! !

!SDActiveRecord class methodsFor: 'defaults' stamp: 'gsa 12/16/2012 18:54'!
defaultStore
	^ SDFileStore new! !

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'RamonLeon 5/14/2011 15:31'!
detect: aBlock
	^ self find: aBlock ! !

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'RamonLeon 5/14/2011 15:31'!
detect: aBlock ifNone: alternateBlock
	^ self find: aBlock ifAbsent: alternateBlock ! !

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'rjl 8/14/2008 20:23'!
do: aBlock
	"do on a copy in case the do modifies the collection I'm trying to iterate'"
	Store forClass: self do: aBlock! !

!SDActiveRecord class methodsFor: 'actions private' stamp: 'RamonLeon 5/5/2011 14:05'!
ensureReady
	lock := Monitor new! !

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 3/31/2008 14:19'!
find: aBlock 
	^ self 
		find: aBlock
		ifAbsent: [ nil ]! !

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 8/14/2008 20:24'!
find: aBlock ifAbsent: aHandler 
	^ Store forClass: self detect: aBlock ifNone: aHandler! !

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 8/14/2008 20:24'!
find: aBlock ifPresent: aHandler 
	^ Store forClass: self detect: aBlock ifFound: aHandler! !

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 5/23/2009 17:48'!
findAll
	^ (Store forClass: self) values! !

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 6/13/2009 17:27'!
findAll: aBlock 
	^ ( Store forClass: self findAll: aBlock ) values! !

!SDActiveRecord class methodsFor: 'initialization' stamp: 'gsa 12/16/2012 18:53'!
initialize
	"self initialize"
	
	Store := self defaultStore.
! !

!SDActiveRecord class methodsFor: 'queries private' stamp: 'RamonLeon 5/6/2011 08:13'!
lock
	^ lock ifNil: [ lock := Monitor new ]! !

!SDActiveRecord class methodsFor: 'actions' stamp: 'rjl 7/14/2009 10:01'!
resetStoreForLoad
	self setStore: self store class new! !

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'RamonLeon 5/14/2011 15:30'!
select: aBlock
	^ self findAll: aBlock ! !

!SDActiveRecord class methodsFor: 'initialization' stamp: 'gsa 12/16/2012 18:51'!
setStore: aStore 
	Store ifNotNil: [ Store ensureDown ].
	Store := aStore! !

!SDActiveRecord class methodsFor: 'accessing' stamp: 'rjl 8/14/2008 15:31'!
store
	^ Store! !

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'RamonLeon 5/14/2011 15:33'!
values 
	^ self findAll ! !

!SDActiveRecord class methodsFor: 'actions' stamp: 'pre 6/10/2012 18:53'!
warmUp
	
	Store ensureForClass: self.
	self ensureReady.
	Store recoverForClass: self! !

!SDActiveRecord class methodsFor: 'actions' stamp: 'pre 6/10/2012 18:33'!
warmUpAllClasses
	
	SDActiveRecord
		allSubclassesDo: [ :each | self store ensureForClass: each ];
		allSubclassesDo: [ :each | each warmUp ]! !

!SDCheckPointer class methodsFor: 'initialization' stamp: 'rjl 8/5/2008 19:55'!
initialize
	"SDCheckPointer will act as the single agent to ensure all active record 
	subclasses are correctly initialized on start up."
	"self initialize"
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self
! !

!SDCheckPointer class methodsFor: 'system startup' stamp: 'rjl 9/14/2008 08:47'!
shutDown: isDown 
	isDown ifTrue: 
		[ SDActiveRecord store ensureDown.
		SDActiveRecord allSubclassesDo: [ :each | each coolDown ] ]! !

!SDCheckPointer class methodsFor: 'system startup' stamp: 'RamonLeon 4/21/2011 23:50'!
startUp: isStarting 
	"Had problems reusing images from templated sites or existing sites
	and accidently mixing old data or another db into this images data.
	I want to ensure that any time an image starts up fresh from disk it always
	reloads all the data; setting a fresh store on startup will ensure this happens."
	SDActiveRecord store 
		ifNil: [ SDActiveRecord setStore: SDActiveRecord defaultStore ]
		ifNotNil: [ isStarting ifTrue: [ SDActiveRecord resetStoreForLoad ] ].

	"Load records on a priority just higher than Seaside so db is loaded before
	requests start coming in, don't want users seeing missing data."
	[ isStarting ifTrue: [ SDActiveRecord warmUpAllClasses ] ] 
		forkAt: Processor userBackgroundPriority - 1
		named: 'loading sandstone'! !

!SDConcurrentDictionary methodsFor: 'copying' stamp: 'rjl 5/9/2008 21:40'!
, aCollection 
	^ lock critical: [ self class on: dictionary , aCollection ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/28/2011 16:18'!
associationsDo: aBlock
	^ lock critical: [ dictionary associationsDo: aBlock ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:39'!
at: aKey
	^ lock critical: [ dictionary at: aKey ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 5/9/2008 21:11'!
at: aKey ifAbsent: aBlock 
	^ lock critical: 
		[ dictionary 
			at: aKey
			ifAbsent: aBlock ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 5/9/2008 20:53'!
at: aKey ifAbsentPut: aBlock 
	^ lock critical: 
		[ dictionary 
			at: aKey
			ifAbsentPut: aBlock ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 5/9/2008 20:53'!
at: aKey put: aValue 
	^ lock critical: 
		[ dictionary 
			at: aKey
			put: aValue ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:39'!
detect: aBlock ifNone: aHandler
	^ lock critical: [ dictionary detect: aBlock ifNone: aHandler ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 8/5/2008 10:55'!
dictionary
	^ dictionary! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 5/9/2008 20:11'!
dictionary: anObject
	dictionary := anObject! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:39'!
do: aBlock
	^ lock critical: [ dictionary do: aBlock ]! !

!SDConcurrentDictionary methodsFor: 'testing' stamp: 'RamonLeon 4/22/2011 00:40'!
includesKey: aKey
	^ lock critical: [ dictionary includesKey: aKey ]! !

!SDConcurrentDictionary methodsFor: 'initialization' stamp: 'rjl 5/9/2008 21:35'!
initialize
	super initialize.
	"I'm using a Monitor rather than a Semaphor here because I need to support 
	reentrant operations by the same process, a Semaphor is too low level"
	lock := Monitor new! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:40'!
keys
	^ lock critical: [ dictionary keys ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:40'!
keysAndValuesDo: aBlock
	^ lock critical: [ dictionary keysAndValuesDo: aBlock ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 08:48'!
keysDo: aBlock
	^ lock critical: [ dictionary keysDo: aBlock ]! !

!SDConcurrentDictionary methodsFor: 'removing' stamp: 'rjl 11/30/2008 13:00'!
removeAll
	^ lock
		critical: [self keys copy
				do: [:e | self removeKey: e]]! !

!SDConcurrentDictionary methodsFor: 'removing' stamp: 'rjl 11/30/2008 13:00'!
removeKey: aKey
	^ lock critical: 
		[ dictionary 
			removeKey: aKey ]! !

!SDConcurrentDictionary methodsFor: 'removing' stamp: 'rjl 5/9/2008 20:51'!
removeKey: aKey ifAbsent: aBlock 
	^ lock critical: 
		[ dictionary 
			removeKey: aKey
			ifAbsent: aBlock ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:41'!
select: aBlock
	^ lock critical: [ dictionary select: aBlock  ]! !

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:40'!
values
	^ lock critical: [ dictionary values ]! !

!SDConcurrentDictionary class methodsFor: 'instance creation' stamp: 'rjl 5/9/2008 20:11'!
on: aDictionary 
	^ self new
		dictionary: aDictionary;
		yourself! !

!SDRecordMarker methodsFor: 'converting' stamp: 'rjl 8/14/2008 16:23'!
asOriginalObject
	"this needs to call cachedLoadFrom not findById in order to allow cycles in 
	the serialized graph this allows an object that references an unloaded object 
	during the loadAll to force it's load instead of failing"
	| origClass |
	origClass := Smalltalk at: className.
	"I'm checking inheritsFrom: here so that any classes that used to be 
	activeRecords but aren't anymore that had serialized instances are 
	caught and return nil when resolved rather than blow up.  This happens
	often during development when you're changing your model a lot"
	^ (origClass inheritsFrom: SDActiveRecord) 
		ifTrue: [ SDActiveRecord store cachedLoadOfClass: (Smalltalk at: className)  from: id ]
		ifFalse: [ nil ]! !

!SDRecordMarker methodsFor: 'accessing' stamp: 'rjl 12/11/2007 09:17'!
className
	^ className! !

!SDRecordMarker methodsFor: 'accessing' stamp: 'rjl 12/11/2007 09:17'!
className: anObject
	className := anObject! !

!SDRecordMarker methodsFor: 'accessing' stamp: 'rjl 12/11/2007 09:17'!
id
	^ id! !

!SDRecordMarker methodsFor: 'accessing' stamp: 'rjl 12/11/2007 09:17'!
id: anObject
	id := anObject! !

!SDRecordMarker methodsFor: 'testing' stamp: 'rjl 7/8/2008 15:41'!
isSandstoneMarker
	^ true! !

!SDSerializer methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 09:54'!
materializeFromFile: aFile
	self subclassResponsibility! !

!SDSerializer methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 09:54'!
serialize: anObject toFile: aFile
	self subclassResponsibility! !

!SDSmartRefStreamSerializer methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 09:57'!
materializeFromFile: aFile
	^ SmartRefStream readOnlyFileNamed: aFile do: [ :file | file sandstoneNextAndClose ]! !

!SDSmartRefStreamSerializer methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 09:58'!
serialize: anObject toFile: aFile
	SmartRefStream
		newFileNamed: aFile
		do: [ :file | 
			file
				sandstoneNextPutObjOnly: anObject;
				flush ]! !
SDMemoryStore initialize!
SDActiveRecord initialize!
SDCheckPointer initialize!
