{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Building Block: 
A Governance Building Block is a Model Building Block that is participate to the overarching of transformation Initiatives.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0f641043685975c9 where -- ========== Governance Building Block

open import Agda.Primitive
open import SysFEAT.SOF.0eb95e566855bed9 public -- Model Building Block

GovernanceBuildingBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
GovernanceBuildingBlock u = MixedOrderEntity u

--  GovernanceBuildingBlock is subTypeOf ModelBuildingBlock
st-0f6410a968597653 : ∀ {u v} → (GovernanceBuildingBlock u) ⊏⋆ₑ (ModelBuildingBlock v)
st-0f6410a968597653 = trivialPolySubTypeOfEntity

-- == Relationships =======================
