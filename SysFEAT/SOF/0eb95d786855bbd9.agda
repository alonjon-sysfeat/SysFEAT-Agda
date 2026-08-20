{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Lexical Scope: 
An Architecture Lexical Scope is a kind of Model Lexical Scope for Architecture Blocks.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb95d786855bbd9 where -- ========== Architecture Lexical Scope

open import Agda.Primitive
open import SysFEAT.SOF.0eb95db46855bdd5 public -- Model Lexical Scope
open import SysFEAT.SOF.9397b45268777e3b public -- Architecture Block

ArchitectureLexicalScope : ∀ (u : Level) → ClassOfMixedOrderEntity u
ArchitectureLexicalScope u = MixedOrderEntity u

--  ArchitectureLexicalScope is subTypeOf ModelLexicalScope
st-0eb95f556855c00f : ∀ {u v} → (ArchitectureLexicalScope u) ⊏⋆ₑ (ModelLexicalScope v)
st-0eb95f556855c00f = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Scoped Architecture Block: -}
scopedArchitectureBlock : ∀ {u v} →  Linkage (ArchitectureLexicalScope u) (ArchitectureBlock v)
scopedArchitectureBlock = make_nestingRelation "Scoped Architecture Block" "scopedArchitectureBlock"

postulate -- scopedArchitectureBlock is subTypeOf scopedModelBlock
  st-0eb95f9a6855c081-0eb96a306855c816  : ∀ {u v} → scopedArchitectureBlock {u} {v}  ⊏⋆ᵣ  scopedModelBlock {u} {v}
