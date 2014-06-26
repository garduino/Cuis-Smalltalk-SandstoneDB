'From Cuis 4.2 of 25 July 2013 [latest update: #2021] on 26 June 2014 at 7:54:37.300748 pm'!
'Description Please enter a description for this package '!
!provides: 'SandstoneDBTests' 1 1!
!requires: 'SandstoneDB' 1 1 nil!
!classDefinition: #SDFooObject category: #SandstoneDbTests!
SDActiveRecord subclass: #SDFooObject
	instanceVariableNames: 'dict'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDFooObject class' category: #SandstoneDbTests!
SDFooObject class
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

!classDefinition: #SDMemoryStoreTests category: #SandstoneDbTests!
SDActiveRecordTests subclass: #SDMemoryStoreTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SandstoneDbTests'!
!classDefinition: 'SDMemoryStoreTests class' category: #SandstoneDbTests!
SDMemoryStoreTests class
	instanceVariableNames: ''!


!SDActiveRecordTests commentStamp: 'rjl 12/19/2007 20:41' prior: 0!
Part of the reason I did this project was to force myself to learn to do more unit testing.  I'm starting to learn to like it.!

!SDFooObject methodsFor: 'accessing' stamp: 'np 5/23/2009 18:42'!
dict
	^dict! !

!SDFooObject methodsFor: 'accessing' stamp: 'np 5/23/2009 18:42'!
dict: aDictionary
	dict := aDictionary! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 3/10/2008 21:44'!
buddy
	^ buddy! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 3/10/2008 21:44'!
buddy: anObject
	buddy := anObject! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/11/2007 10:33'!
children
	^ children! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/11/2007 10:33'!
children: anObject
	children := anObject! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
dateOfBirth
	^ dateOfBirth! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
dateOfBirth: anObject
	dateOfBirth := anObject! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:08'!
description
	^ description! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
description: anObject
	description := anObject! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
father
	^ father! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
father: anObject
	father := anObject! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
mother
	^ mother! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
mother: anObject
	mother := anObject! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
name
	^ name! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 12/7/2007 17:07'!
name: anObject
	name := anObject! !

!SDPersonMock methodsFor: 'accessing' stamp: 'rjl 4/22/2008 10:45'!
refreshed
	^ self class atId: id! !

!SDPersonMock class methodsFor: 'as yet unclassified' stamp: 'rjl 4/1/2008 11:53'!
testPerson
	^ (self new)
		name: 'mzqfmmv zptnhli';
		dateOfBirth: Date today - 12000 atRandom days;
		description: 'Rxvalpv tdpqkvv ikjcscw bigjmeb vukntxj qxshdtt wkczzio bqpqacu whluhqv.  Lqlwajh!!  Qknwpfd peeskqc oarthtv pfblwjj yndlxks.  .  Ucnlocq iuiiluk txkkzmh dshkhmq uokcwqy oiktkxl awxmpep rkkcmis xcgyoeg jodtjaf ntwijzp?  Bqpjsiq qthzwtx xcnqbag ausurqp xatoqar jytguon?  Bpigdij jgijxep bjgttpr kklsfaw rdoikwz!!  Hzdbjxc?  Ehwflyy qfcqntk mlhcjql ecbtrtk egxldpk rypalvw ndngbdl jhhdxts zrfjtaz gccrnni dwuqxwm nmifzcq sxkgkxh.  Kwtzsjv ghvjqqm lfgibdt rufcowp kavabmi bpveqsr shjzsft xqaxivy fjqydns ryyggif.

Jshooyy jsyojlv miusnaj onpdiss hypkzzd qaunpqd rrvgnws ekiswyv?  Glhxkkk?  Pzyjuot raaefbv cnxmbsd?  Jabaniw uirjkcm jocxnhd!!  Erwblox qikxfez.

Ezswaga cnrzhqi jrdikos kkcncxd eoewflm ylzilve viumpqm uiyqhvv azrezhc jjeesfd rfdgsgg wfmxfye iisisju vhjourb.

Yicqnqd zhaioos npnjjsc hxfwlfr ozynyjs!!  Qavvubu uodeedp?  Fjdgbxu ryswazg ifumqpv jtlifnd?  Blciucl kypalot?  Dstnwqj kwzpxrk bgewcyp triddbr acvrkey pwgcleb sqtxajv svzpnwk unnlmtg oqnbpsq svtnxdo!!

Ywodawk uikhwek kyqivqj iojkwiw.  Bjcsnpu jtfpmqd!!  Crwlngk qeeeuci nnakbai hncfdkk kbhehju ttdsdcf zqulfpj pmvtmfa xrusxuy wbamfee opzjdia hcrfdnz tiasrqz wkwidbg?  Tzlwcst twaeuwm tfhreal igamlby saekozk tjnxohl ogcdhva fckbaii utqvhjg?  Nrynpjl dniycpm kkvytuu bnuxrev zrvbcph.  Awfbhgg xtyffnz lwjkhdo evmvogt vqfqppp chdtxcr ktiwujg vcgqoya thgkhac ncagoxy unuukan gntyowz obmiwmf!!  Okwjujz tfghbxi jupstni xbzpgau zlxeblm!!  Llxuwqc gupeurb ltwyzzj xxanyln qgrtigr?

Vudeenm hnfwxay rtaacau ymmyxbi lpcbamg ifopjuw guhctxx radytrh yubjcjc lnjucta qinzmlf.  Cnunlvp gdhcgrq oxeojsd?  Bbkjtne kzlvdso xtmgqhj pfyroxl brmqhkt gvqnftz aupxtsg.

Krzxaye!!  Clhbjoq ubxtlsc jzhggvl updbzxe.

Vhtetst ruwpukn jdttpba?  Ctwactb ljoeiqa pubapwc cioporv?

Talkecn dbddhuw rxfybrf iwdxfdo spdbdyk vhxbgrm elqngon dytngbm knqxaqv zrltvgh snjkzig rzypaly ekabqcg.  Xxxmegt otxzkhh vxpyjkn pnhgpfx qsnrhjo ziftvuu ivvfacz nhdajef ezksurr gvfepxx.  Lqdldbo wegkzlk qxgqpux hfbtydd hbqfhea gxuksjm hvunuwa?  Lxqkddp bccukhy odljtnp nouapus dcqpkqz lgpxpcs fmaehsc cgybese gujcbqz icjzamy tvmvwlf dvtkpng!!  !!  Okqxkhh dfuulea?  Ratgmpz?  Pfmgfbk qhggllc.  Balobww?

Wqoyfli xlxenvi ngtdshb bhpmyhd.  Kxsidry wijdkem oyuutvw msunbhq vaektbt yfapmwl yjrwmxi xgzfpbk hxcmydy jgaybjh magjtcf.  Koxatqi ivvultq yptadcp ygqutkn dizybis nvsvfhx tdhcqfy ihvqsvs paakztf uzokxhk xlcfhbr wejdutf wywzrqs tnlswyo?  Glawqav nvndvdf cbqzhce iuygwer twyxquv pjklwnv tbnazjw vuvxvgi?

Rpyaiqq rnvfyzk fgbsbjc zhftunh uvmxaov vgvwzwq fpuurxc!!  Zemojud eadzsas wzfdcuv vxvulbc ahtiijq yclzbvf rspxhrc lymmwja!!  Mfmgrrb!!  Cyfuuvp iabqntx volbiij ebjihqw ypxvukv wnghvwo fhqwyuh tlmeyrl oxcmotx uemizkc xvbgzqh xsdqtcj xfbzrgg?  Jmtauxu!!  Kbigzux slwjszd manystg usxbiya kfgdygh wrclmih chqtyew orkrazt pekdcrh oexrivu bnbrerh?

Xbkcyvl xivutzr iitbwnm eouuiux iwaansa oxzygwa sosqxvi jkinurb bedwzss?  Uspwzru.  Eogmjki raowczb!!  ?  Lfzhatu ldnvhfn rzfqfcl yzhbxpo evahsye eibcwlx ygknqms terepdi acvezip lyqydat bksesji.  Sncraae sropzde xdhuuuf?  ?

Vtcevnw dqwwzqe kqmakan wboltvp axuhsio eddpqvk hmaqsst kbqyeqg qjnlkph zjrrcdr glyqfak!!  Ciofqeq qzfzdxn aumczcs yxzdrqu hxnlhmo ihnowav nqggjoi dfdxzqr.

Wiedtvt jpikavx hkxvzqi eyobbcb hxhktut qpgasux bnwnzhp xaceikr comlnmg jkdzrhn hctccgm zcjgqbc llklclt!!

Bgyypck fvgaauj bzetcjo rqixcnx ggwuzax cnknyiv vbtnkxj zkmenql ynxyqpp vqnvihq qydzixk jvsbxhw qnbphdl uddayfe!!  Glalnun gbtcspy kxnzokz ecdpgpr kcmvcdf ngczhkp oovhcik yvlzbgl?';
		yourself! !

!SDActiveRecordTests methodsFor: 'factory' stamp: 'gsa 11/23/2012 17:22'!
childClass
	^ SDChildMock ! !

!SDActiveRecordTests methodsFor: 'factory' stamp: 'gsa 11/23/2012 17:22'!
defaultStore
	self subclassResponsibility! !

!SDActiveRecordTests methodsFor: 'actions' stamp: 'gsa 12/16/2012 19:00'!
flushAndReload
	self personClass
		coolDown ;
		warmUp! !

!SDActiveRecordTests methodsFor: 'factory' stamp: 'RamonLeon 5/5/2011 12:45'!
grandChildClass
	^ SDGrandChildMock ! !

!SDActiveRecordTests methodsFor: 'factory' stamp: 'gsa 11/23/2012 17:23'!
manClass
	^ SDManMock ! !

!SDActiveRecordTests methodsFor: 'factory' stamp: 'gsa 11/23/2012 17:24'!
personClass
	^ SDPersonMock ! !

!SDActiveRecordTests methodsFor: 'running' stamp: 'gsa 12/16/2012 19:09'!
setUp
	store := self defaultStore.
	SDActiveRecord setStore: store.
	"only want to warm up test models, not anything else that might be in this image"
	SDFooObject warmUp.
	self personClass withAllSubclasses do: [ :each | each warmUp ].
	
	
	mom := self personClass testPerson.
	kid := self personClass testPerson.
! !

!SDActiveRecordTests methodsFor: 'running' stamp: 'gsa 12/16/2012 18:49'!
tearDown
	self personClass do: [ :each | [each delete] on: Error do: [] ].
	self personClass coolDown.
	SDFooObject do: [:each | [each delete] on: Error do: [] ].
	self personClass allSubclassesDo: [ :each | each coolDown ].
	Smalltalk garbageCollectMost ! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/21/2008 16:04'!
testAbort
	kid name: 'Joe'.
	kid save.
	kid name: 'Mary'.
	self assert: kid name = 'Mary'.
	kid abortChanges.
	self assert: kid name = 'Joe'! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/18/2009 14:04'!
testArraySerialization
	kid save.
	mom children: {  kid  }.
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children includes: kid refreshed)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testAtIdSubclasses
	| man woman |
	man := self manClass testPerson save.
	woman := self womanClass testPerson save.
	mom save.
	self assert: (self personClass atId: mom id) = mom.
	self assert: (self personClass atId: man id) = man.
	self assert: (self personClass atId: woman id) = woman.
	man delete.
	woman delete! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/18/2009 14:04'!
testBagSerialization
	kid save.
	mom children: (Bag with: kid).
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children includes: kid refreshed)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'gsa 11/22/2012 14:41'!
testBigSave
	| commitTime people deleteTime lookupTime |
	people := (1 to: 200) collect: [ :it | self personClass testPerson ] .
	commitTime := [ people do: [ :each | each save ]  ] timeToRun milliSeconds.
	lookupTime := [ people do: [ :each | self personClass atId: each id ] ] timeToRun
		milliSeconds.
	deleteTime := [ people do: [ :each | each delete ] ] timeToRun milliSeconds.
	Transcript
		show: commitTime;
		newLine;
		show: lookupTime;
		newLine;
		show: deleteTime;
		newLine;
		newLine.
	self assert: commitTime < 3 seconds.
	self assert: deleteTime < 1 seconds! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:51'!
testClassSerialization
	mom children: self womanClass .
	self should: [ mom save ] raise: SDCommitError! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/18/2009 14:04'!
testCollectionSerialization
	kid save.
	mom children: (OrderedCollection with: kid).
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children includes: kid refreshed)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'NicolasPetton 4/27/2011 16:50'!
testCopying
	| copy |
	copy := mom copy.
	self deny: copy = mom.
	self deny: copy id = mom id.
	self assert: copy isNew! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/26/2010 15:15'!
testCreatedOn
	kid save.
	self assert: kid createdOn <= DateAndTime now! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 23:24'!
testDeepCopy
	"sandstoneDeepCopy works just like deepCopy until it hits another active record
	at which point the copying stops, and the actual references is returned."
	| copy obj |
	kid save.
	mom save.
	kid buddy: #not -> (#deeper -> mom).
	obj := Object new.
	kid father: obj.
	copy := kid sandstoneDeepCopy.
	self assert: copy buddy value value == mom.
	self deny: copy father == obj! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 4/30/2011 18:00'!
testDefaultStore
	self assert: (SDActiveRecord defaultStore isKindOf: SDAbstractStore)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testDelete
	kid save.
	self deny: kid isNew.
	self assert: kid version equals: 1.
	kid delete.
	self assert: kid isNew.
	self assert: kid version equals: 0.
	self assert: (self personClass find: [ :each | each id = kid id ]) isNil.
	self flushAndReload.
	self assert: (self personClass find: [ :each | each id = kid id ]) isNil.
	kid delete "should not do anything"! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testDeleteAll
	50 timesRepeat: [ self personClass testPerson save ].
	self personClass do: #delete.
	self assert: self personClass findAll size = 0! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testDeleteAndFind
	kid name: 'zorgle'.
	kid save.
	self deny: kid isNew.
	kid delete.
	self assert: (self personClass find: [:e | e name = 'zorgle']) isNil.
! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testDeleteSubclass
	kid := self manClass testPerson save.
	self deny: kid isNew.
	self assert: kid version equals: 1.
	kid delete.
	self assert: kid isNew.
	self assert: kid version equals: 0.
	self flushAndReload.
	self assert: (self manClass find: [ :each | each id = kid id ]) isNil.
! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testDictionaryKeys
	| dad |
	dad := self manClass testPerson save.
	kid save.
	mom children: (Dictionary with: dad -> kid).
	mom save.
	self flushAndReload.
	self 
		assert: (mom refreshed children at: dad refreshed )
		equals: kid refreshed! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/12/2008 20:09'!
testDictionarySerialization
	kid save.
	mom children: (Dictionary with: #son -> kid).
	mom save.
	self flushAndReload.
	self 
		assert: (mom refreshed children at: #son)
		equals: kid refreshed! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'gsa 11/23/2012 16:59'!
testDictionaryWithArrays
	| foo fooCopy |
	kid save.
	3 timesRepeat: [ self manClass new save ].
	foo := SDFooObject new
		dict: (Dictionary with: kid -> self manClass findAll);
		yourself.
	fooCopy := foo sandstoneDeepCopy.
	self deny: foo == fooCopy.
	self deny: fooCopy dict == foo dict.
	"Works fine before saving the object"
	foo dict keysAndValuesDo: 
		[ :key :value | 
		self assert: (key isKindOf: self personClass).
		value do: [ :each | self assert: (each isKindOf: self manClass) ] ].
	fooCopy sandstoneMarkReferences.
	"should still work, otherwise save is somehow modifying original object instead of deepCopy of it"
	foo dict keysAndValuesDo: 
		[ :key :value | 
		self assert: (key isKindOf: self personClass).
		value do: [ :each | self assert: (each isKindOf: self manClass) ] ]! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 13:08'!
testDo
	kid save.
	self flushAndReload.
	self assert: 1 equals: self personClass findAll size.
	self personClass do: [ :e | self assert: e = kid ]! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 3/10/2008 20:54'!
testEquality
	mom save.
	kid mother: mom.
	kid save.
	self flushAndReload .
	self assert: kid refreshed mother equals: mom refreshed! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testFind
	kid save.
	self flushAndReload.
	self deny: (self personClass find: [ :each | each id = kid id ]) isNil.
	self assert: (self personClass find: [ :each | each id = 'not' ]) isNil! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testFindAll
	kid save.
	self flushAndReload.
	self assert: (self personClass findAll class = Array).
	self assert: (self personClass findAll: [ :each | each id = 'not' ]) class = Array! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'gsa 12/16/2012 19:49'!
testFindAllSubclasses
	| man woman child grandchild |	
	man := self manClass testPerson save.
	woman := self womanClass testPerson save.
	child := self childClass testPerson save.
	grandchild := self grandChildClass testPerson save.

	mom save.

	self 
		assert: 5
		equals: self personClass findAll size.
	self assert: (self personClass findAll contains: [ :e | e class = self manClass ]).
	self 
		assert: 1
		equals: self manClass findAll size.
	self 
		assert: 3
		equals: self womanClass findAll size.
	self 
		assert: 2
		equals: self childClass findAll size.
	self 
		assert: 1
		equals: self grandChildClass findAll size.
		
	man delete.
	woman delete.
	child delete.
	grandchild delete! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:47'!
testFindById
	kid save.
	self deny: (self personClass atId: kid id) isNil! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:48'!
testFindIdentity
	mom save.
	self flushAndReload.
	self assert: (self personClass atId: mom id) = (self personClass atId: mom id)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:48'!
testFindIfPresent
	| found |
	found := false.
	kid save.
	self flushAndReload.
	self personClass find: [ :each | each id = kid id ] ifPresent: [:it | found := true ].
	self assert: found! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:50'!
testFindSubclasses
	| man woman child grandchild |
	man := self manClass testPerson save.
	woman := self womanClass testPerson save.
	child := self childClass testPerson save.
	grandchild := self grandChildClass testPerson save.
	self assert: man = (self personClass find: [:e | e id = man id]).
	self assert: woman = (self personClass find: [:e | e id = woman id]).
	self assert: child = (self personClass find: [:e | e id = child id]).
	self assert: grandchild = (self personClass find: [:e | e id = grandchild id]).
	man delete.
	woman delete.
	child delete.
	grandchild delete! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/14/2008 23:23'!
testIdentity
	mom save.
	kid mother: mom.
	kid save.
	self flushAndReload.
	self assert: kid refreshed mother == mom refreshed! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 3/10/2008 20:55'!
testIsNew
	self assert: kid isNew.
	kid save.
	self deny: kid isNew.
	kid delete.
	self assert: kid isNew.! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 4/30/2011 18:04'!
testMarkReferences
	kid mother: mom.
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid mother isKindOf: SDRecordMarker).
	self assert: mom id = kid mother id.
	self assert: kid mother className = mom className! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:49'!
testMarkReferencesCopies
	kid save.
	mom children: { kid }.
	mom save.
	self assert: mom children first == kid! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:47'!
testMarkReferencesRecursive
	kid buddy: #not -> mom.
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid buddy value isKindOf: SDRecordMarker)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:48'!
testMarkReferencesRecursiveDeeper
	kid buddy: #not -> (#deeper -> mom).
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid buddy value value isKindOf: SDRecordMarker)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:48'!
testMarkReferencesRecursiveDeeperInCollection
	kid buddy: #not -> {  (#deeper -> mom)  }.
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid buddy value first value isKindOf: SDRecordMarker)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/12/2008 20:10'!
testMarkReferencesRecursiveDeeperInDictionary
	kid buddy: #not -> { (Dictionary with: #deeper -> mom) }.
	mom save.
	kid sandstoneMarkReferences.
	self assert: ((kid buddy value first at: #deeper) isKindOf: SDRecordMarker)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 5/12/2008 22:48'!
testMarkReferencesRecursiveDeeperNestedList
	kid buddy: #not -> (Array with: (Array with: mom)).
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid buddy value first first isKindOf: SDRecordMarker)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 7/10/2008 09:42'!
testMarkReferencesRecursiveDeeperNotTouchedInOrig
	| otherKid |
	kid buddy: #not -> (#deeper -> mom).
	otherKid := kid sandstoneDeepCopy.
	otherKid buddy value value save.
	otherKid sandstoneMarkReferences.
	self assert: (kid buddy value value isKindOf: mom class)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 5/5/2011 12:51'!
testMarkReferencesStops
	| other |
	other := self manClass testPerson save.
	mom father: other.
	kid buddy: #some -> (#time -> mom).
	mom save.
	kid sandstoneMarkReferences.
	self assert: (mom father == other)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'gsa 11/27/2012 18:38'!
testMatrixSerialization
	| man woman |
	man := self manClass testPerson save.
	woman := self womanClass testPerson save.	kid save.
	mom children: (MatrixPharo14CLayer rows: 4 columns: 4).
	mom children at: 1 at: 1 put: kid.
	mom children at: 2 at: 1 put: man.
	mom children at: 1 at: 2 put: woman.
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children at: 1 at: 1) equals: kid refreshed.
	self assert: (mom refreshed children at: 2 at: 1) equals: man refreshed.
	self assert: (mom refreshed children at: 1 at: 2) equals: woman refreshed! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/14/2008 14:24'!
testPeerIdentity
	mom save.
	kid mother: mom.
	kid save.
	self flushAndReload.
	self assert: kid refreshed mother = mom refreshed! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/10/2008 21:07'!
testResolveReferences
	mom save.
	kid mother: mom asReferenceMarker.
	kid sandstoneResolveReferences.
	self assert: (kid mother isKindOf: SDActiveRecord)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/10/2008 21:07'!
testResolveReferencesRecursive
	mom save.
	kid buddy: #not -> mom asReferenceMarker.
	kid sandstoneResolveReferences.
	self assert: (kid buddy value isKindOf: SDActiveRecord)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/10/2008 21:07'!
testResolveReferencesRecursiveDeeperNestedList
	mom save.
	kid buddy: #not -> (Array with: (Array with: mom asReferenceMarker)).
	kid sandstoneResolveReferences.
	self assert: (kid buddy value first first isKindOf: SDActiveRecord)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 4/30/2011 17:49'!
testSaveInBlock
	kid save: [ self assert: kid isNew ].
	self deny: kid isNew! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 3/31/2011 21:40'!
testSemaphorSerialization
	mom children: Semaphore new.
	self should: [ mom save ] raise: SDCommitError! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 8/18/2009 14:05'!
testSetSerialization
	kid save.
	mom children: (Set with: kid).
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children includes: kid refreshed)! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'RamonLeon 4/30/2011 17:37'!
testTypes
	| values |
	values := {nil. true. 1. $d. 'test'}.
	kid buddy: values.
	kid save.
	self flushAndReload.
	self assert: kid refreshed buddy = values! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 4/26/2010 15:15'!
testUpdatedOn
	kid save.
	self assert: kid updatedOn <= DateAndTime now! !

!SDActiveRecordTests methodsFor: 'testing' stamp: 'rjl 7/14/2008 23:26'!
testVersion
	self assert: kid version equals: 0.
	kid save.
	self assert: kid version equals: 1.
	kid save.
	self assert: kid version equals: 2! !

!SDActiveRecordTests methodsFor: 'factory' stamp: 'gsa 11/23/2012 17:24'!
womanClass
	^ SDWomanMock ! !

!SDActiveRecordTests class methodsFor: 'testing' stamp: 'gsa 12/16/2012 18:49'!
isAbstract
	^ true! !

!SDFileStoreTests methodsFor: 'defaults' stamp: 'gsa 11/23/2012 12:50'!
defaultStore
	^ SDFileStore new! !

!SDFileStoreTests methodsFor: 'running' stamp: 'gsa 11/24/2012 14:40'!
testDeleteFailedCommits
	kid save.
	(store 
		dirForClass: kid class
		atId: kid id) 
		copyFileNamed: kid id , '.obj'
		toFileNamed: kid id , '.obj.new'.
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj').
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj.new').
	store deleteFailedCommitsForClass: kid class.
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj').
	self deny: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj.new')! !

!SDFileStoreTests methodsFor: 'running' stamp: 'rjl 8/10/2008 11:27'!
testDeleteOldVersions
	| id |
	kid save.
	kid save.
	id := kid id.
	kid delete.
	self assert: ((store 
			dirForClass: kid class
			atId: id) fileNamesMatching: id , '.*') isEmpty! !

!SDFileStoreTests methodsFor: 'running' stamp: 'gsa 11/27/2012 18:39'!
testFinishPartialCommits
	kid save.
	(store 
		dirForClass: kid class
		atId: kid id) 
		rename: kid id , '.obj'
		toBe: kid id , '.obj.new'.
	self deny: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj').
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj.new').
	store finishPartialCommitsForClass: kid class.
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj').
	self deny: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj.new')! !

!SDFileStoreTests methodsFor: 'running' stamp: 'rjl 8/14/2008 20:50'!
testLoadMissingFile
	kid save.
	(store 
		dirForClass: kid class
		atId: kid id) deleteFileNamed: kid id , '.obj'.
	self 
		should: 
			[ store 
				loadClass: kid class
				atId: kid id ]
		raise: SDLoadError! !

!SDFileStoreTests methodsFor: 'running' stamp: 'gsa 11/22/2012 14:39'!
testLoadTime
	| commitTime people lookupTime loadTime |
	people := (1 to: 25) collect: [ :it | self personClass testPerson ].
	commitTime := [ people do: [ :each | each save ] ] timeToRun milliSeconds.
	lookupTime := [ people do: [ :each | self personClass atId: each id ] ] timeToRun milliSeconds.
	loadTime := [ 
	SDActiveRecord resetStoreForLoad.
	SDPersonMock
		withAllSubclassesDo: [ :each | SDActiveRecord store ensureForClass: each ];
		withAllSubclassesDo: [ :each | each warmUp ].
	SDActiveRecord store ensureForClass: SDFooObject.
	SDFooObject warmUp ] timeToRun milliSeconds.
	Transcript
		show: commitTime;
		newLine;
		show: loadTime;
		newLine;
		show: lookupTime;
		newLine;
		newLine.
	self assert: commitTime < 1 seconds! !

!SDFileStoreTests methodsFor: 'running' stamp: 'rjl 8/10/2008 11:27'!
testSaveMissingFile
	self assert: kid isNew.
	kid save.
	self deny: kid isNew.
	(store 
		dirForClass: kid class
		atId: kid id) deleteFileNamed: kid id , '.obj'.
	kid save.
	self deny: kid isNew! !

!SDFileStoreTests methodsFor: 'running' stamp: 'RamonLeon 5/5/2011 12:48'!
testStorageDir
	"Active records id's must find a proper subdirectory entry in the defined structure"
	| ids legalNames |
	legalNames := (0 to: 9) collect: [ :e | e asString ].
	ids := Set new: 1000.
	1000 timesRepeat: [ ids add: UUID new asString36 ].
	ids add: 'abaoblwgnaydxokccorveamoq'.
	ids do: 
		[ :anId | 
		self assert: (legalNames includes: (store 
					dirForClass: self personClass
					atId: anId) localName) ]! !

!SDFileStoreTests class methodsFor: 'testing' stamp: 'rjl 8/10/2008 11:06'!
isAbstract
	^ false! !

!SDMemoryStoreTests methodsFor: 'defaults' stamp: 'rjl 8/10/2008 11:07'!
defaultStore
	^ SDMemoryStore new! !

!SDMemoryStoreTests methodsFor: 'defaults' stamp: 'pre 6/12/2012 15:02'!
testWarmUpInitializesCorrectDictionaries

	self manClass new save.
	self childClass warmUp.
	self assert: (self childClass findAll allSatisfy: [ :c | c class == self childClass ]).! !

!SDMemoryStoreTests class methodsFor: 'testing' stamp: 'rjl 8/10/2008 11:06'!
isAbstract
	^ false! !
