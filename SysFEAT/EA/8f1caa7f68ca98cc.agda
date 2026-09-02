{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Dictionary: 
A Physical Data Dictionary is Physical Data Dictionary that holds the definition of Physical Data Blocks such as Physical Data Domain definitions, Table definitions, Column Type definitions.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1caa7f68ca98cc where -- ========== Physical Data Dictionary

open import Agda.Primitive
open import SysFEAT.EA.8f1c920168ca7fcd public -- Data Dictionary
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block

PhysicalDataDictionary : FirstOrderClass
PhysicalDataDictionary = FirstOrderEntity


--  PhysicalDataDictionary is subTypeOf DataDictionary
st-6ba771665f6b8b50 : PhysicalDataDictionary ⊏ₑ DataDictionary
st-6ba771665f6b8b50 = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged Physical Data Block: -}
packagedPhysicalDataBlock : ∀ {u} →  Linkage PhysicalDataDictionary (PhysicalDataBlock u)
packagedPhysicalDataBlock = make_nestingRelation "Packaged Physical Data Block" "packagedPhysicalDataBlock"

postulate -- packagedPhysicalDataBlock is subTypeOf packagedDataAsset
  st-8f1caca768ca9d38-8f1c922668ca7ff9  : packagedPhysicalDataBlock  {lzero}  ⊏⋆ᵣ  packagedDataAsset  {lzero}
