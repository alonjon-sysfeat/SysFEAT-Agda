{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Dictionary: 


Documentation : https://framework.sysfeat.com/pages/8f1cb5a068caab57.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1cb5a068caab57 where -- ========== NoSQL Dictionary

open import Agda.Primitive
open import SysFEAT.EA.8f1caa7f68ca98cc public -- Physical Data Dictionary
open import SysFEAT.EA.77318c6c62167dd7 public -- NoSQL Data Asset
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology

NoSQLDictionary : ∀ (u : Level) → ClassOfMixedOrderEntity u
NoSQLDictionary u = MixedOrderEntity u

--  NoSQLDictionary is subTypeOf PhysicalDataDictionary
st-8f1cb5a068caab57-8f1caa7f68ca98cc : ∀ {u v} → (NoSQLDictionary u) ⊏⋆ₑ (PhysicalDataDictionary v)
st-8f1cb5a068caab57-8f1caa7f68ca98cc = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged NoSQL Block: -}
packagedNoSQLBlock : ∀ {u} →  Linkage (NoSQLDictionary u) NoSQLDataAsset
packagedNoSQLBlock = make_nestingRelation "Packaged NoSQL Block" "Packaged NoSQL Block"


-- -------------------------------------------------------------------------------------------- 
{- Required Software Technology: -}
requiredSOftwareTechnology : ∀ {u} →  Linkage (NoSQLDictionary u) SOftwareTechnology
requiredSOftwareTechnology = make_Relation "Required Software Technology" "Required Software Technology"

