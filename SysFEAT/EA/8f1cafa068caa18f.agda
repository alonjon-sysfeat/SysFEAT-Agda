{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Relational Dictionary: 
A Relational Dictionary is a Physical Data Dictionary of relational entities (Tables, Keys, Indexes, etc.) and of Relational Schema referencing theses entites.

Documentation : https://framework.sysfeat.com/pages/8f1cafa068caa18f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8f1cafa068caa18f where -- ========== Relational Dictionary

open import Agda.Primitive
open import SysFEAT.EA.8f1caa7f68ca98cc public -- Physical Data Dictionary
open import SysFEAT.EA.7731894d62166495 public -- Relational Data bLOCK

RelationalDictionary : ∀ (u : Level) → ClassOfOrderedEntity u 
RelationalDictionary u  = OrderedEntity u 


--  RelationalDictionary is subTypeOf PhysicalDataDictionary
st-8f1cafa068caa18f-8f1caa7f68ca98cc : ∀ {u v} → (RelationalDictionary u) ⊏⋆ₑ (PhysicalDataDictionary v)
st-8f1cafa068caa18f-8f1caa7f68ca98cc = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Relational Block: -}
packagedRelationalBlock : ∀ {u} →  Linkage (RelationalDictionary u) RelationalDatabLOCK
packagedRelationalBlock = make_nestingRelation "Packaged Relational Block" "Packaged Relational Block"

postulate -- packagedRelationalBlock is subTypeOf packagedPhysicalDataBlock
  st-8f1caff468caa22b-8f1caca768ca9d38  : packagedRelationalBlock {u}  ⊏⋆ᵣ  packagedPhysicalDataBlock {u} {v}
