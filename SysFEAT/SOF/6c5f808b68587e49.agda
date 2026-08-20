{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Lexical Scope: 
An Information Lexical Scope is a kind of Model Lexical Scope for Information Blocks.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6c5f808b68587e49 where -- ========== Information Lexical Scope

open import Agda.Primitive
open import SysFEAT.SOF.0eb95d786855bbd9 public -- Architecture Lexical Scope
open import SysFEAT.SOF.6c5f80e468587f06 public -- Information Block

InformationLexicalScope : ∀ (u : Level) → ClassOfMixedOrderEntity u
InformationLexicalScope u = MixedOrderEntity u

--  InformationLexicalScope is subTypeOf ArchitectureLexicalScope
st-6c5f80a768587e97 : ∀ {u v} → (InformationLexicalScope u) ⊏⋆ₑ (ArchitectureLexicalScope v)
st-6c5f80a768587e97 = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Scoped Information Block: -}
scopedInformationBlock : ∀ {u v} →  Linkage (InformationLexicalScope u) (InformationBlock v)
scopedInformationBlock = make_nestingRelation "Scoped Information Block" "scopedInformationBlock"

postulate -- scopedInformationBlock is subTypeOf scopedArchitectureBlock
  st-6c5f82aa68588092-0eb95f9a6855c081  : ∀ {u v} → scopedInformationBlock {u} {v}  ⊏⋆ᵣ  scopedArchitectureBlock {u} {v}
