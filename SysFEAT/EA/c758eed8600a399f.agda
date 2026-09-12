{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Library: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c758eed8600a399f where -- ========== NoSQL Library

open import Agda.Primitive
open import SysFEAT.EA.8f1cb5a068caab57 public -- NoSQL Dictionary
open import SysFEAT.SOF.0f6418e568598b38 public -- Reference Dictionary

NoSQLLibrary : ClassOfBoundedIndividual
NoSQLLibrary = BoundedIndividual

--  NoSQLLibrary is subTypeOf NoSQLDictionary
st-c758eee2600a3a09 : NoSQLLibrary ⊏ₑ NoSQLDictionary
st-c758eee2600a3a09 = polySubTypeOf-identity

--  NoSQLLibrary is subTypeOf ReferenceDictionary
st-c758ef33600a3ae3 : NoSQLLibrary ⊏ₑ ReferenceDictionary
st-c758ef33600a3ae3 = polySubTypeOf-identity

-- == Relationships =======================
