'From Cuis 4.0 of 21 April 2012 [latest update: #1308] on 22 November 2012 at 2:54:24 pm'!
'Description Please enter a description for this package '!
!classDefinition: #SDActiveRecordTests category: #SandstoneDbTests!
TestCase subclass: #SDActiveRecordTests
	instanceVariableNames: 'mom kid store'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDActiveRecordTests class' category: #SandstoneDbTests!
SDActiveRecordTests class
	instanceVariableNames: ''!

!classDefinition: #SDFileStoreTests category: #SandstoneDbTests!
SDActiveRecordTests subclass: #SDFileStoreTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDFileStoreTests class' category: #SandstoneDbTests!
SDFileStoreTests class
	instanceVariableNames: ''!

!classDefinition: #SDFooObject category: #SandstoneDbTests!
SDActiveRecord subclass: #SDFooObject
	instanceVariableNames: 'dict'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDFooObject class' category: #SandstoneDbTests!
SDFooObject class
	instanceVariableNames: ''!

!classDefinition: #SDMemoryStoreTests category: #SandstoneDbTests!
SDActiveRecordTests subclass: #SDMemoryStoreTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDMemoryStoreTests class' category: #SandstoneDbTests!
SDMemoryStoreTests class
	instanceVariableNames: ''!

!classDefinition: #SDPersonMock category: #SandstoneDbTests!
SDActiveRecord subclass: #SDPersonMock
	instanceVariableNames: 'name dateOfBirth description father mother children buddy'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDPersonMock class' category: #SandstoneDbTests!
SDPersonMock class
	instanceVariableNames: ''!

!classDefinition: #SDManMock category: #SandstoneDbTests!
SDPersonMock subclass: #SDManMock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDManMock class' category: #SandstoneDbTests!
SDManMock class
	instanceVariableNames: ''!

!classDefinition: #SDWomanMock category: #SandstoneDbTests!
SDPersonMock subclass: #SDWomanMock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDWomanMock class' category: #SandstoneDbTests!
SDWomanMock class
	instanceVariableNames: ''!

!classDefinition: #SDChildMock category: #SandstoneDbTests!
SDWomanMock subclass: #SDChildMock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDChildMock class' category: #SandstoneDbTests!
SDChildMock class
	instanceVariableNames: ''!

!classDefinition: #SDGrandChildMock category: #SandstoneDbTests!
SDChildMock subclass: #SDGrandChildMock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDGrandChildMock class' category: #SandstoneDbTests!
SDGrandChildMock class
	instanceVariableNames: ''!


!SDActiveRecordTests commentStamp: 'rjl 12/19/2007 20:41' prior: 0!
Part of the reason I did this project was to force myself to learn to do more unit testing.  I'm starting to learn to like it.!

!SDActiveRecordTests methodsFor: 'factory' stamp: 'RamonLeon 5/5/2011 12:44'!
childClass

!SDActiveRecordTests methodsFor: 'factory' stamp: 'rjl 8/10/2008 11:05'!
defaultStore

!SDActiveRecordTests methodsFor: 'actions' stamp: 'RamonLeon 5/5/2011 12:46'!
flushAndReload

!SDActiveRecordTests methodsFor: 'factory' stamp: 'RamonLeon 5/5/2011 12:45'!
grandChildClass

!SDActiveRecordTests methodsFor: 'factory' stamp: 'RamonLeon 5/5/2011 12:44'!
manClass

!SDActiveRecordTests methodsFor: 'factory' stamp: 'RamonLeon 5/5/2011 12:44'!
personClass

!SDActiveRecordTests methodsFor: 'running' stamp: 'RamonLeon 5/5/2011 12:46'!
setUp

!SDActiveRecordTests methodsFor: 'running' stamp: 'RamonLeon 5/5/2011 12:46'!
tearDown

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/21/2008 16:04'!
testAbort

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/18/2009 14:04'!
testArraySerialization

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testAtIdSubclasses

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/18/2009 14:04'!
testBagSerialization

!SDActiveRecordTests methodsFor: 'testing' stamp: 'gsa 11/22/2012 14:41'!
testBigSave

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:51'!
testClassSerialization

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/18/2009 14:04'!
testCollectionSerialization

!SDActiveRecordTests methodsFor: 'testing' stamp: 'NicolasPetton 4/27/2011 16:50'!
testCopying

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/26/2010 15:15'!
testCreatedOn

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 23:24'!
testDeepCopy

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 4/30/2011 18:00'!
testDefaultStore

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testDelete

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testDeleteAll

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testDeleteAndFind

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testDeleteSubclass

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testDictionaryKeys

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/12/2008 20:09'!
testDictionarySerialization

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testDictionaryWithArrays

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 13:08'!
testDo

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 3/10/2008 20:54'!
testEquality

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testFind

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testFindAll

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:51'!
testFindAllSubclasses

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testFindById

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:48'!
testFindIdentity

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:48'!
testFindIfPresent

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testFindSubclasses

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/14/2008 23:23'!
testIdentity

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 3/10/2008 20:55'!
testIsNew

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 4/30/2011 18:04'!
testMarkReferences

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:49'!
testMarkReferencesCopies

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:47'!
testMarkReferencesRecursive

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:48'!
testMarkReferencesRecursiveDeeper

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:48'!
testMarkReferencesRecursiveDeeperInCollection

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/12/2008 20:10'!
testMarkReferencesRecursiveDeeperInDictionary

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:48'!
testMarkReferencesRecursiveDeeperNestedList

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 7/10/2008 09:42'!
testMarkReferencesRecursiveDeeperNotTouchedInOrig

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:51'!
testMarkReferencesStops

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/6/2011 14:37'!
testMatrixSerialization

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/14/2008 14:24'!
testPeerIdentity

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/10/2008 21:07'!
testResolveReferences

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/10/2008 21:07'!
testResolveReferencesRecursive

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/10/2008 21:07'!
testResolveReferencesRecursiveDeeperNestedList

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 4/30/2011 17:49'!
testSaveInBlock

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 3/31/2011 21:40'!
testSemaphorSerialization

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/18/2009 14:05'!
testSetSerialization

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 4/30/2011 17:37'!
testTypes

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/26/2010 15:15'!
testUpdatedOn

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 7/14/2008 23:26'!
testVersion

!SDActiveRecordTests methodsFor: 'factory' stamp: 'RamonLeon 5/5/2011 12:44'!
womanClass

!SDActiveRecordTests class methodsFor: 'testing' stamp: 'rjl 8/10/2008 11:05'!
isAbstract

!SDFileStoreTests methodsFor: 'defaults' stamp: 'rjl 8/10/2008 11:05'!
defaultStore

!SDFileStoreTests methodsFor: 'running' stamp: 'rjl 8/10/2008 11:27'!
testDeleteFailedCommits

!SDFileStoreTests methodsFor: 'running' stamp: 'rjl 8/10/2008 11:27'!
testDeleteOldVersions

!SDFileStoreTests methodsFor: 'running' stamp: 'rjl 8/10/2008 11:27'!
testFinishPartialCommits

!SDFileStoreTests methodsFor: 'running' stamp: 'rjl 8/14/2008 20:50'!
testLoadMissingFile

!SDFileStoreTests methodsFor: 'running' stamp: 'gsa 11/22/2012 14:39'!
testLoadTime

!SDFileStoreTests methodsFor: 'running' stamp: 'rjl 8/10/2008 11:27'!
testSaveMissingFile

!SDFileStoreTests methodsFor: 'running' stamp: 'RamonLeon 5/5/2011 12:48'!
testStorageDir

!SDFileStoreTests class methodsFor: 'testing' stamp: 'rjl 8/10/2008 11:06'!
isAbstract

!SDFooObject methodsFor: 'accessing' stamp: 'np 5/23/2009 18:42'!
dict

!SDFooObject methodsFor: 'accessing' stamp: 'np 5/23/2009 18:42'!
dict: aDictionary

!SDMemoryStoreTests methodsFor: 'defaults' stamp: 'rjl 8/10/2008 11:07'!
defaultStore

!SDMemoryStoreTests methodsFor: 'defaults' stamp: 'pre 6/12/2012 15:02'!
testWarmUpInitializesCorrectDictionaries

!SDMemoryStoreTests class methodsFor: 'testing' stamp: 'rjl 8/10/2008 11:06'!
isAbstract

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 3/10/2008 21:44'!
buddy

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 3/10/2008 21:44'!
buddy: anObject

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/11/2007 10:33'!
children

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/11/2007 10:33'!
children: anObject

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
dateOfBirth

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
dateOfBirth: anObject

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:08'!
description

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
description: anObject

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
father

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
father: anObject

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
mother

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
mother: anObject

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
name

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
name: anObject

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 4/22/2008 10:45'!
refreshed

!SDPersonMock class methodsFor: 'as yet unclassified' stamp: 'rjl 4/1/2008 11:53'!
testPerson