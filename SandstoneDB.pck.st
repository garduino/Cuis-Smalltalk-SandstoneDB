'From Cuis 4.1 of 12 December 2012 [latest update: #1524] on 30 December 2012 at 6:48:47 pm'!
'Description Please enter a description for this package '!
!classDefinition: #SDAbstractStore category: #'SandstoneDb-Core'!
Object subclass: #SDAbstractStore
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDAbstractStore class' category: #'SandstoneDb-Core'!
SDAbstractStore class
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

!classDefinition: #SDCachedStore category: #'SandstoneDb-Core'!
SDAbstractStore subclass: #SDCachedStore
	instanceVariableNames: 'cache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDCachedStore class' category: #'SandstoneDb-Core'!
SDCachedStore class
	instanceVariableNames: ''!

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

!classDefinition: #SDFileStore category: #'SandstoneDb-Store'!
SDCachedStore subclass: #SDFileStore
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Store'!
!classDefinition: 'SDFileStore class' category: #'SandstoneDb-Store'!
SDFileStore class
	instanceVariableNames: 'serializer'!

!classDefinition: #SDLoadError category: #'SandstoneDb-Core'!
SDError subclass: #SDLoadError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDb-Core'!
!classDefinition: 'SDLoadError class' category: #'SandstoneDb-Core'!
SDLoadError class
	instanceVariableNames: ''!

!classDefinition: #SDMemoryStore category: #'SandstoneDb-Store'!
SDCachedStore subclass: #SDMemoryStore
	instanceVariableNames: ''
	classVariableNames: 'Cache Instances'
	poolDictionaries: ''
	category: 'SandstoneDb-Store'!
!classDefinition: 'SDMemoryStore class' category: #'SandstoneDb-Store'!
SDMemoryStore class
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


!SDAbstractStore commentStamp: 'rjl 8/10/2008 11:41' prior: 0!
I'm an abstract store to define what's necessary to plug in a new method of storing active records.  When records are stored, they are already sliced out of the graph and have markers for any other references placed in them.  The store can serialize however it sees fit, but when loading, before returning the version from the store, it should resolve the references.'!

!SDActiveRecord commentStamp: '<historical>' prior: 0!
I'm the core of a simple object database based upon a mix of several patterns intended for use with *small* Seaside based web applications.  I am not meant to scale to millions of records, just tens of thousands, but for prototyping and small office applications where the number of records are in the thousands and the number of concurrent users can be handled by a single Squeak image.  To use me, simply subclass me and restart your image that's it.  

For more information see http://onsmalltalk.com/programming/smalltalk/sandstonedb-simple-activerecord-style-persistence-in-squeak/
!

!SDCheckPointer commentStamp: 'rjl 8/5/2008 09:17' prior: 0!
I run as a background process to ensure the database is loaded and periodically save the image when enough active records are found to be newer than the image.  This is essentially just like flushing the contents of a transaction log to the main database file.!

!SDCommitError commentStamp: 'rjl 4/10/2008 21:33' prior: 0!
Clearly, I'm thrown on a commit failure, duh!!'!

!SDConcurrentDictionary commentStamp: 'rjl 5/9/2008 20:58' prior: 0!
A SDConcurrentDictionary is just a dictionary wrapper so I can wrap a critical around mutating methods I need in ActiveRecord!

!SDError commentStamp: 'rjl 4/10/2008 21:36' prior: 0!
I'm just an abstract error!

!SDFileStore commentStamp: 'rjl 8/10/2008 11:42' prior: 0!
I'm a store for persisting active records directly to disk via a SmartReference stream with a few extentions to make it non interactive.'!

!SDLoadError commentStamp: 'rjl 4/10/2008 20:24' prior: 0!
I'm thrown when an object fails to load from disk, either because the file was corrupt or because it was deleted.!

!SDMemoryStore commentStamp: 'rjl 8/10/2008 11:43' prior: 0!
I'm a store for persisting active records directly to a dictionary to show what a minimal implementation of a store must to do pass the unit tests.!

!SDRecordMarker commentStamp: 'rjl 4/10/2008 21:32' prior: 0!
I exist to mark a reference to another object in the serialized file, I'm replaced by a real object when I'm deserialized.  I'm basically a manually invoked proxy being used because getting a real proxy that inherits from ProtoObject to serialize seemed hurculean.!

!ArrayedCollection methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 6/29/2011 20:50'!
sandstoneDeepCopyVisits: visitedParts 

!ArrayedCollection methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:30'!
sandstoneMarkReferencesVisits: visitedParts 

!ArrayedCollection methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:49'!
sandstoneResolveReferencesVisits: visitedParts 

!Boolean methodsFor: '*sandstonedb' stamp: 'rjl 5/12/2008 22:33'!
sandstoneDeepCopyVisits: visitedParts

!Boolean methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 13:36'!
sandstoneMarkReferencesVisits: visitedParts

!Boolean methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:55'!
sandstoneResolveReferencesVisits: visitedParts 

!Character methodsFor: '*sandstonedb' stamp: 'rjl 5/12/2008 22:34'!
sandstoneDeepCopyVisits: visitedParts

!Character methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 13:36'!
sandstoneMarkReferencesVisits: visitedParts

!Character methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:55'!
sandstoneResolveReferencesVisits: visitedParts 

!Class methodsFor: '*SandstoneDb' stamp: 'RamonLeon 3/31/2011 21:36'!
sandstoneDeepCopyVisits: aCollection 

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/14/2008 08:56'!
fileNamed: aName do: aBlock 

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/14/2008 08:57'!
newFileNamed: aName do: aBlock 

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/14/2008 08:57'!
oldFileNamed: aName do: aBlock 

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/12/2008 16:51'!
readOnlyFileNamed: aString

!DataStream class methodsFor: '*sandstonedb' stamp: 'rjl 1/14/2008 08:56'!
readOnlyFileNamed: aName do: aBlock 

!Dictionary methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 14:20'!
sandstoneResolveReferencesVisits: visitedParts

!FileDirectory methodsFor: '*sandstonedb' stamp: 'gsa 11/22/2012 14:25'!
sandstoneRename: oldFileName toBe: newFileName

!FileDirectory methodsFor: '*sandstonedb' stamp: 'rjl 8/5/2008 22:48'!
withSubdirectoriesDo: aBlock 

!InstructionStream methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 9/9/2011 14:40'!
sandstoneDeepCopyVisits: visitedParts 

!Integer methodsFor: '*sandstonedb' stamp: 'rjl 4/10/2008 10:08'!
asReducedSumOfDigits

!Number methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:46'!
sandstoneDeepCopyVisits: visitedParts

!Number methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 13:37'!
sandstoneMarkReferencesVisits: visitedParts

!Number methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:44'!
sandstoneResolveReferencesVisits: visitedParts 

!Object methodsFor: '*sandstonedb-testing' stamp: 'sas 4/9/2008 13:20'!
isSandstoneActiveRecord

!Object methodsFor: '*sandstonedb-testing' stamp: 'rjl 7/8/2008 15:40'!
isSandstoneMarker

!Object methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 6/29/2011 20:59'!
sandstoneDeepCopyVisits: visitedParts 

!Object methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:30'!
sandstoneMarkReferencesVisits: visitedParts 

!Object methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:30'!
sandstoneResolveReferencesVisits: visitedParts 

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/14/2008 16:48'!
abortChanges: anObject

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:19'!
commit: aBlock

!SDAbstractStore methodsFor: 'defaults' stamp: 'rjl 8/14/2008 15:37'!
defaultCacheSize

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/14/2008 13:39'!
ensureDown! !

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/10/2008 11:46'!
ensureForClass: aClass 

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:41'!
forClass: aClass 

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:23'!
forClass: aClass at: anId ifAbsent: aHandler

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:24'!
forClass: aClass detect: aBlock ifFound: aHandler

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:24'!
forClass: aClass detect: aBlock ifNone: aHandler

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'RamonLeon 4/30/2011 18:07'!
forClass: aClass do: aBlock

!SDAbstractStore methodsFor: 'delegated queries' stamp: 'rjl 8/14/2008 20:27'!
forClass: aClass findAll: aBlock

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/14/2008 20:50'!
loadClass: aClass atId: anId 

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/10/2008 11:49'!
recoverForClass: aClass

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:13'!
removeObject: anObject 

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:13'!
storeObject: anObject 

!SDAbstractStore methodsFor: 'actions' stamp: 'rjl 8/15/2008 01:32'!
updateObject: anObject 

!SDAbstractStore class methodsFor: 'actions' stamp: 'RamonLeon 5/9/2011 11:53'!
install

!SDActiveRecord methodsFor: 'comparing' stamp: 'RamonLeon 4/22/2011 19:31'!
= anObject 

!SDActiveRecord methodsFor: 'actions' stamp: 'rjl 8/14/2008 16:48'!
abortChanges

!SDActiveRecord methodsFor: 'converting' stamp: 'RamonLeon 5/5/2011 14:43'!
asReferenceMarker

!SDActiveRecord methodsFor: 'accessing' stamp: 'rjl 4/26/2008 22:26'!
createdOn

!SDActiveRecord methodsFor: 'actions' stamp: 'RamonLeon 5/5/2011 14:08'!
critical: aBlock

!SDActiveRecord methodsFor: 'actions' stamp: 'rjl 8/14/2008 15:19'!
delete

!SDActiveRecord methodsFor: 'testing' stamp: 'RamonLeon 4/22/2011 19:31'!
hash

!SDActiveRecord methodsFor: 'accessing' stamp: 'rjl 1/16/2008 18:40'!
id

!SDActiveRecord methodsFor: 'initialize-release' stamp: 'RamonLeon 4/19/2011 21:24'!
initialize

!SDActiveRecord methodsFor: 'testing' stamp: 'rjl 5/12/2008 20:43'!
isNew

!SDActiveRecord methodsFor: 'testing' stamp: 'rjl 5/12/2008 20:43'!
isSandstoneActiveRecord

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/27/2008 02:16'!
onAfterDelete

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/27/2008 02:29'!
onAfterFirstSave

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/27/2008 02:29'!
onAfterSave

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/27/2008 02:29'!
onBeforeDelete

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/26/2010 15:15'!
onBeforeFirstSave

!SDActiveRecord methodsFor: 'events' stamp: 'rjl 4/26/2010 15:15'!
onBeforeSave

!SDActiveRecord methodsFor: 'events' stamp: 'RamonLeon 9/9/2011 14:34'!
onLoad

!SDActiveRecord methodsFor: 'copying' stamp: 'NicolasPetton 4/27/2011 12:19'!
postCopy

!SDActiveRecord methodsFor: 'serialization' stamp: 'rjl 10/31/2009 15:19'!
sandstoneDeepCopy

!SDActiveRecord methodsFor: 'serialization' stamp: 'rjl 10/31/2009 15:19'!
sandstoneMarkReferences

!SDActiveRecord methodsFor: 'serialization' stamp: 'rjl 10/31/2009 15:19'!
sandstoneResolveReferences

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

!SDActiveRecord methodsFor: 'accessing' stamp: 'rjl 3/31/2008 14:17'!
updatedOn

!SDActiveRecord methodsFor: 'actions' stamp: 'rjl 3/31/2008 14:17'!
validate

!SDActiveRecord methodsFor: 'accessing' stamp: 'rjl 3/31/2008 14:17'!
version

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 8/5/2008 11:14'!
atId: anId 

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 8/14/2008 20:22'!
atId: anId ifAbsent: aHandler 

!SDActiveRecord class methodsFor: 'actions' stamp: 'rjl 8/11/2008 20:26'!
commit: aBlock 

!SDActiveRecord class methodsFor: 'actions' stamp: 'RamonLeon 5/5/2011 14:06'!
coolDown

!SDActiveRecord class methodsFor: 'defaults' stamp: 'rjl 7/14/2009 10:22'!
defaultHashSize

!SDActiveRecord class methodsFor: 'defaults' stamp: 'gsa 12/16/2012 18:55'!
defaultIdentityDictionary 
	^ IdentityDictionary new: self defaultHashSize ! !

!SDActiveRecord class methodsFor: 'defaults' stamp: 'gsa 12/16/2012 18:54'!
defaultStore
	^ SDFileStore new! !

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'RamonLeon 5/14/2011 15:31'!
detect: aBlock

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'RamonLeon 5/14/2011 15:31'!
detect: aBlock ifNone: alternateBlock

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'rjl 8/14/2008 20:23'!
do: aBlock

!SDActiveRecord class methodsFor: 'actions private' stamp: 'RamonLeon 5/5/2011 14:05'!
ensureReady

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 3/31/2008 14:19'!
find: aBlock 

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 8/14/2008 20:24'!
find: aBlock ifAbsent: aHandler 

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 8/14/2008 20:24'!
find: aBlock ifPresent: aHandler 

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 5/23/2009 17:48'!
findAll

!SDActiveRecord class methodsFor: 'queries' stamp: 'rjl 6/13/2009 17:27'!
findAll: aBlock 

!SDActiveRecord class methodsFor: 'initialization' stamp: 'gsa 12/16/2012 18:53'!
initialize
	"self initialize"
	
	Store := self defaultStore.
! !

!SDActiveRecord class methodsFor: 'queries private' stamp: 'RamonLeon 5/6/2011 08:13'!
lock

!SDActiveRecord class methodsFor: 'actions' stamp: 'rjl 7/14/2009 10:01'!
resetStoreForLoad

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'RamonLeon 5/14/2011 15:30'!
select: aBlock

!SDActiveRecord class methodsFor: 'initialization' stamp: 'gsa 12/16/2012 18:51'!
setStore: aStore 
	Store ifNotNil: [ Store ensureDown ].
	Store := aStore! !

!SDActiveRecord class methodsFor: 'accessing' stamp: 'rjl 8/14/2008 15:31'!
store

!SDActiveRecord class methodsFor: 'queries smalltalk style' stamp: 'RamonLeon 5/14/2011 15:33'!
values 

!SDActiveRecord class methodsFor: 'actions' stamp: 'pre 6/10/2012 18:53'!
warmUp

!SDActiveRecord class methodsFor: 'actions' stamp: 'pre 6/10/2012 18:33'!
warmUpAllClasses

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:09'!
abortChanges: anObject 

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/21/2011 23:01'!
addCachedOfClass: aClass at: anId put: anObject

!SDCachedStore methodsFor: 'queries' stamp: 'gsa 11/22/2012 14:29'!
cachedLoadOfClass: aClass from: anId

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:06'!
ensureForClass: aClass

!SDCachedStore methodsFor: 'delegated queries' stamp: 'RamonLeon 4/21/2011 23:44'!
familyForClass: aClass 

!SDCachedStore methodsFor: 'delegated queries' stamp: 'rjl 5/23/2009 17:47'!
forClass: aClass 

!SDCachedStore methodsFor: 'actions' stamp: 'gsa 11/22/2012 14:31'!
forClass: aClass at: anId ifAbsent: aHandler

!SDCachedStore methodsFor: 'delegated queries' stamp: 'gsa 11/22/2012 14:33'!
forClass: aClass detect: aBlock ifFound: aHandler

!SDCachedStore methodsFor: 'delegated queries' stamp: 'gsa 11/22/2012 14:35'!
forClass: aClass detect: aBlock ifNone: aHandler 

!SDCachedStore methodsFor: 'delegated queries' stamp: 'RamonLeon 4/21/2011 23:59'!
forClass: aClass do: aBlock

!SDCachedStore methodsFor: 'delegated queries' stamp: 'RamonLeon 4/22/2011 00:10'!
forClass: aClass findAll: aBlock 

!SDCachedStore methodsFor: 'initialize-release' stamp: 'RamonLeon 4/21/2011 22:58'!
initialize

!SDCachedStore methodsFor: 'initialize-release' stamp: 'RamonLeon 4/22/2011 08:57'!
initializeCache

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/21/2011 23:02'!
removeCachedOfClass: aClass from: anId 

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:08'!
removeObject: anObject

!SDCachedStore methodsFor: 'actions' stamp: 'RamonLeon 4/21/2011 23:28'!
storeObject: anObject 

!SDCheckPointer class methodsFor: 'initialization' stamp: 'rjl 8/5/2008 19:55'!
initialize

!SDCheckPointer class methodsFor: 'system startup' stamp: 'rjl 9/14/2008 08:47'!
shutDown: isDown 

!SDCheckPointer class methodsFor: 'system startup' stamp: 'RamonLeon 4/21/2011 23:50'!
startUp: isStarting 

!SDConcurrentDictionary methodsFor: 'copying' stamp: 'rjl 5/9/2008 21:40'!
, aCollection 

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/28/2011 16:18'!
associationsDo: aBlock

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:39'!
at: aKey

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 5/9/2008 21:11'!
at: aKey ifAbsent: aBlock 

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 5/9/2008 20:53'!
at: aKey ifAbsentPut: aBlock 

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 5/9/2008 20:53'!
at: aKey put: aValue 

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:39'!
detect: aBlock ifNone: aHandler

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 8/5/2008 10:55'!
dictionary

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'rjl 5/9/2008 20:11'!
dictionary: anObject

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:39'!
do: aBlock

!SDConcurrentDictionary methodsFor: 'testing' stamp: 'RamonLeon 4/22/2011 00:40'!
includesKey: aKey

!SDConcurrentDictionary methodsFor: 'initialization' stamp: 'rjl 5/9/2008 21:35'!
initialize

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:40'!
keys

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:40'!
keysAndValuesDo: aBlock

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 08:48'!
keysDo: aBlock

!SDConcurrentDictionary methodsFor: 'removing' stamp: 'rjl 11/30/2008 13:00'!
removeAll

!SDConcurrentDictionary methodsFor: 'removing' stamp: 'rjl 11/30/2008 13:00'!
removeKey: aKey

!SDConcurrentDictionary methodsFor: 'removing' stamp: 'rjl 5/9/2008 20:51'!
removeKey: aKey ifAbsent: aBlock 

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:41'!
select: aBlock

!SDConcurrentDictionary methodsFor: 'accessing' stamp: 'RamonLeon 4/22/2011 00:40'!
values

!SDConcurrentDictionary class methodsFor: 'instance creation' stamp: 'rjl 5/9/2008 20:11'!
on: aDictionary 

!SDFileStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:20'!
commit: aBlock

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

!SDFileStore methodsFor: 'actions' stamp: 'gsa 12/16/2012 18:57'!
ensureDown
	self initializeCache ! !

!SDFileStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:07'!
ensureForClass: aClass 

!SDFileStore methodsFor: 'queries' stamp: 'rjl 8/14/2008 20:44'!
familyForClass: aClass 

!SDFileStore methodsFor: 'crash recovery' stamp: 'gsa 11/22/2012 07:40'!
finishPartialCommitsForClass: aClass 

!SDFileStore methodsFor: 'crash recovery' stamp: 'gsa 11/22/2012 10:06'!
loadChangesForClass: aClass 

!SDFileStore methodsFor: 'actions' stamp: 'RamonLeon 10/9/2012 09:15'!
loadClass: aClass atId: anId

!SDFileStore methodsFor: 'actions' stamp: 'rjl 8/10/2008 01:24'!
recoverForClass: aClass 

!SDFileStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:08'!
removeObject: anObject

!SDFileStore methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 10:14'!
storeObject: origObject

!SDFileStore methodsFor: 'actions' stamp: 'rjl 8/15/2008 01:32'!
updateObject: anObject

!SDFileStore class methodsFor: 'accessing' stamp: 'RamonLeon 5/31/2011 10:03'!
serializer

!SDFileStore class methodsFor: 'accessing' stamp: 'RamonLeon 5/31/2011 10:03'!
serializer: aSerializer

!SDMemoryStore methodsFor: 'actions' stamp: 'rjl 8/11/2008 19:20'!
commit: aBlock

!SDMemoryStore methodsFor: 'actions' stamp: 'RamonLeon 4/22/2011 09:04'!
loadClass: aClass atId: anId 

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

!SDRecordMarker methodsFor: 'converting' stamp: 'rjl 8/14/2008 16:23'!
asOriginalObject

!SDRecordMarker methodsFor: 'accessing' stamp: 'rjl 12/11/2007 09:17'!
className

!SDRecordMarker methodsFor: 'accessing' stamp: 'rjl 12/11/2007 09:17'!
className: anObject

!SDRecordMarker methodsFor: 'accessing' stamp: 'rjl 12/11/2007 09:17'!
id

!SDRecordMarker methodsFor: 'accessing' stamp: 'rjl 12/11/2007 09:17'!
id: anObject

!SDRecordMarker methodsFor: 'testing' stamp: 'rjl 7/8/2008 15:41'!
isSandstoneMarker

!SDSerializer methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 09:54'!
materializeFromFile: aFile

!SDSerializer methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 09:54'!
serialize: anObject toFile: aFile

!SDSmartRefStreamSerializer methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 09:57'!
materializeFromFile: aFile

!SDSmartRefStreamSerializer methodsFor: 'actions' stamp: 'RamonLeon 5/31/2011 09:58'!
serialize: anObject toFile: aFile

!Semaphore methodsFor: '*SandstoneDb' stamp: 'RamonLeon 3/31/2011 21:36'!
sandstoneDeepCopyVisits: aCollection 

!Set methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 14:20'!
sandstoneResolveReferencesVisits: visitedParts

!SmartRefStream methodsFor: '*sandstonedb' stamp: 'rjl 8/12/2008 08:11'!
sandstoneNextAndClose

!SmartRefStream methodsFor: '*sandstonedb' stamp: 'RamonLeon 3/15/2011 15:17'!
sandstoneNextPutObjOnly: anObject 

!String methodsFor: '*sandstonedb-serialization' stamp: 'rjl 5/12/2008 22:36'!
sandstoneDeepCopyVisits: visitedParts

!String methodsFor: '*sandstonedb-serialization' stamp: 'RamonLeon 5/6/2011 13:37'!
sandstoneMarkReferencesVisits: visitedParts

!String methodsFor: '*sandstonedb-serialization' stamp: 'rjl 8/3/2008 00:21'!
sandstoneResolveReferencesVisits: visitedParts 

!UndefinedObject methodsFor: '*sandstonedb' stamp: 'rjl 5/12/2008 22:37'!
sandstoneDeepCopyVisits: visitedParts

!UndefinedObject methodsFor: '*sandstonedb' stamp: 'RamonLeon 5/6/2011 13:37'!
sandstoneMarkReferencesVisits: visitedParts

!UndefinedObject methodsFor: '*sandstonedb' stamp: 'rjl 8/3/2008 00:53'!
sandstoneResolveReferencesVisits: visitedParts 
SDActiveRecord initialize!
SDCheckPointer initialize!
SDMemoryStore initialize!