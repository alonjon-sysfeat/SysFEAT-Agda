{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Library: 


Documentation : https://framework.sysfeat.com/pages/c758eed8600a399f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c758eed8600a399f where -- ========== NoSQL Library

open import Agda.Primitive
open import SysFEAT.EA.8f1cb5a068caab57 public -- NoSQL Dictionary
open import SysFEAT.SOF.3aca50c46aa63f3b public -- Reference Dictionary

NoSQLLibrary : ClassOfBoundedIndividual
NoSQLLibrary = BoundedIndividual

--  NoSQLLibrary withAspect NoSQLDictionary
st-c758eed8600a399f-8f1cb5a068caab57 : NoSQLLibrary ⊏ₐₑ (NoSQLDictionary lzero)
st-c758eed8600a399f-8f1cb5a068caab57 = polySubTypeOf-identity

--  NoSQLLibrary is subTypeOf ReferenceDictionary
st-c758eed8600a399f-3aca50c46aa63f3b : NoSQLLibrary ⊏ₑ ReferenceDictionary
st-c758eed8600a399f-3aca50c46aa63f3b = polySubTypeOf-identity

-- == Relationships =======================
