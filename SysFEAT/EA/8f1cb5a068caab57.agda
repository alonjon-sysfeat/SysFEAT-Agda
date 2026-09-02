{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Dictionary: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1cb5a068caab57 where -- ========== NoSQL Dictionary

open import Agda.Primitive
open import SysFEAT.EA.8f1caa7f68ca98cc public -- Physical Data Dictionary
open import SysFEAT.EA.77318c6c62167dd7 public -- NoSQL Data Asset
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology

NoSQLDictionary : FirstOrderClass
NoSQLDictionary = FirstOrderEntity


--  NoSQLDictionary is subTypeOf PhysicalDataDictionary
st-8f1cb5ac68caab84 : NoSQLDictionary ⊏ₑ PhysicalDataDictionary
st-8f1cb5ac68caab84 = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged NoSQL Block: -}
packagedNoSQLBlock :  Linkage NoSQLDictionary NoSQLDataAsset
packagedNoSQLBlock = make_nestingRelation "Packaged NoSQL Block" "packagedNoSQLBlock"


{- Required Software Technology: -}
requiredSOftwareTechnology :  Linkage NoSQLDictionary SOftwareTechnology
requiredSOftwareTechnology = make_Relation "Required Software Technology" "requiredSOftwareTechnology"

