Cuis-SandstoneDB
================

SandstoneDb, Simple ActiveRecord Style Persistence in Cuis.

Ported from: http://onsmalltalk.com/sandstonedb-simple-activerecord-style-persistence-in-squeak.

CAUTION: This is a first commit, is still a work in progress with some failing tests.


To install in a Cuis 4.1 image evaluate the next script:

    | slash  |
    slash := FileDirectory slash.
    {
    '..', slash, 'Cuis-Pharo14CompatibilityLayer', slash, 'CuisSandstoneDB-Pharo14CLayer.pck.st' .
    '..', slash, 'Cuis-Pharo14CompatibilityLayer', slash, 'Cuis-Network-UUID.pck.st' .
    '..', slash, 'Cuis-Pharo14CompatibilityLayer', slash, 'Cuis-NetworkTests-UUID.pck.st' .
    '..', slash, 'Cuis-SandstoneDB', slash, 'SandstoneDB.pck.st' .
    '..', slash, 'Cuis-SandstoneDB', slash, 'SandstoneDBTests.pck.st' .
    }
    do:
    [ :fileName | CodePackageFile installPackageStream:
    (FileStream concreteStream readOnlyFileNamed: fileName)
    ].

