{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Dictionary: 
A Relational Dictionary is a Physical Data Dictionary of relational entities (Tables, Keys, Indexes, etc.) and of Relational Schema referencing theses entites.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1cafa068caa18f where -- ========== Relational Dictionary

open import Agda.Primitive
open import SysFEAT.EA.8f1caa7f68ca98cc public -- Physical Data Dictionary
open import SysFEAT.EA.7731894d62166495 public -- Relational Data bLOCK

RelationalDictionary : FirstOrderClass
RelationalDictionary = FirstOrderEntity


--  RelationalDictionary is subTypeOf PhysicalDataDictionary
st-8f1cafa968caa1bc : RelationalDictionary ⊏ₑ PhysicalDataDictionary
st-8f1cafa968caa1bc = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged Relational Block: -}
packagedRelationalBlock :  Linkage RelationalDictionary RelationalDatabLOCK
packagedRelationalBlock = make_nestingRelation "Packaged Relational Block" "packagedRelationalBlock"

postulate -- packagedRelationalBlock is subTypeOf packagedPhysicalDataBlock
  st-8f1caff468caa22b-8f1caca768ca9d38  : packagedRelationalBlock   ⊏⋆ᵣ  packagedPhysicalDataBlock  {lzero}
