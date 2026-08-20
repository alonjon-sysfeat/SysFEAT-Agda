{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Block Collection: 
A Block Collection is a Mixed-Order Entity that is a set of Building Blocks.The grouping of  Building Blocks can be achieved either by reference (Reference Relation) or by nesting (Nesting Relation), in which case the Block Collection serves as a Block Lexical Scope.Example:- Container Package as a Block Lexical Scope.- Asset Portfolio as a pure Block Collection.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d5aa4868513f43 where -- ========== Block Collection

open import Agda.Primitive
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- Mixed-Order Entity
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block

BlockCollection : ∀ (u : Level) → ClassOfMixedOrderEntity u
BlockCollection u = MixedOrderEntity u

--  BlockCollection is subTypeOf MixedOrderEntity
st-6bf1a76f6859ce2c : ∀ {u v} → (BlockCollection u) ⊏⋆ₑ (MixedOrderEntity v)
st-6bf1a76f6859ce2c = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Grouped Building Block: 
Set of Building Blocks of a Block Collection.
-}
groupedBuildingBlock : ∀ {u v} →  Linkage (BlockCollection u) (BuildingBlock v)
groupedBuildingBlock = make_Relation "Grouped Building Block" "groupedBuildingBlock"

postulate -- groupedBuildingBlock is subTypeOf existentialIndependence
  st-23d5c4b66851421c-cbfcee0c685359a7  : ∀ {u v} → groupedBuildingBlock {u} {v}  ⊏⋆ᵣ  existentialIndependence {u} {v}
