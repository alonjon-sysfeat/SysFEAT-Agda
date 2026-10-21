{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Dictionary: 
A Physical Data Dictionary is Physical Data Dictionary that holds the definition of Physical Data Blocks such as Physical Data Domain definitions, Table definitions, Column Type definitions.

Documentation : https://framework.sysfeat.com/pages/8f1caa7f68ca98cc.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1caa7f68ca98cc where -- ========== Physical Data Dictionary

open import Agda.Primitive
open import SysFEAT.EA.67d376e36aa45056 public -- Data Dictionary
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block

PhysicalDataDictionary : ∀ (u : Level) → ClassOfMixedOrderEntity u
PhysicalDataDictionary u = MixedOrderEntity u

--  PhysicalDataDictionary is subTypeOf DataDictionary
st-8f1caa7f68ca98cc-67d376e36aa45056 : ∀ {u} → (PhysicalDataDictionary u) ⊏ₘₑ DataDictionary
st-8f1caa7f68ca98cc-67d376e36aa45056 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Physical Data Block: -}
packagedPhysicalDataBlock : ∀ {u v} →  Linkage (PhysicalDataDictionary u) (PhysicalDataBlock v)
packagedPhysicalDataBlock = make_nestingRelation "Packaged Physical Data Block" "Packaged Physical Data Block"

postulate -- packagedPhysicalDataBlock is subTypeOf packagedDataAsset
  st-8f1caca768ca9d38-8f1c922668ca7ff9  : ∀ {u v} → packagedPhysicalDataBlock {u} {v}  ⊏⋆ᵣ  packagedDataAsset {u}
