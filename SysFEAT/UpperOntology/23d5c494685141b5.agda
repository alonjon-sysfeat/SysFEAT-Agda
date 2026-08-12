{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Block Lexical Scope: 
A Block Lexical Scope is a Block Collection that is also a Lexical Scope for the Building Blocks it groups.A Block Lexical Scope defines the existence of its grouped Building Blocks through nesting.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d5c494685141b5 where -- ========== Block Lexical Scope

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5aa4868513f43 public -- Block Collection
open import SysFEAT.UpperOntology.a39aaa7f685e5118 public -- Lexical Scope
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block

BlockLexicalScope : ∀ (u : Level) → ClassOfMixedOrderEntity u
BlockLexicalScope u = MixedOrderEntity u

postulate --  BlockLexicalScope is subTypeOf BlockCollection
  st-23d5c499685141df : ∀ {u v} → (BlockLexicalScope u) ⊏⋆ₑ (BlockCollection v)

postulate --  BlockLexicalScope is subTypeOf LexicalScope
  st-a39aab30685e523f : ∀ {u v} → (BlockLexicalScope u) ⊏⋆ₑ (LexicalScope v)

-- == Relationships =======================

{- Scoped Building Block: 
Nesting Relation that asserts the existence of a set of Building Blocks in the context of a given Block Lexical Scope.A Building Block belongs to one and one one Block Lexical Scope.
-}
scopedBuildingBlock : ∀ {u v} →  Linkage (BlockLexicalScope u) (BuildingBlock v)
scopedBuildingBlock = make_nestingRelation "Scoped Building Block" "scopedBuildingBlock"

postulate -- scopedBuildingBlock is subTypeOf nestingRelation
  st-0eb946496854a02e-02a506a968540333  : ∀ {u v} → scopedBuildingBlock {u} {v}  ⊏⋆ᵣ  nestingRelation {u} {v}
postulate -- scopedBuildingBlock is subTypeOf groupedBuildingBlock
  st-0eb946496854a02e-23d5c4b66851421c  : ∀ {u v} → scopedBuildingBlock {u} {v}  ⊏⋆ᵣ  groupedBuildingBlock {u} {v}
