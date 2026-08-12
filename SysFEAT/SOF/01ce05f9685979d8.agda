{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Initiative Block: 
An Initiative Block is a Model Building Block used to describe enterprise transformation and sustainability Initiatives.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.01ce05f9685979d8 where -- ========== Initiative Block

open import Agda.Primitive
open import SysFEAT.SOF.0eb95e566855bed9 public -- Model Building Block

InitiativeBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
InitiativeBlock u = MixedOrderEntity u

postulate --  InitiativeBlock is subTypeOf ModelBuildingBlock
  st-01ce061b68597a3a : ∀ {u v} → (InitiativeBlock u) ⊏⋆ₑ (ModelBuildingBlock v)

-- == Relationships =======================
