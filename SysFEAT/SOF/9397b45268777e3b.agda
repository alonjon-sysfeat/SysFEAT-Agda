{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Block: 
An Architecture Block is any Model Building Block used to describe the architecture of a system (including the enterprise). This includes Asset Blocks (Applications, org-units, Business Functions, Business Processes...) and Individual Architecture Assets (physical persons, software installations, locations, ...).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.9397b45268777e3b where -- ========== Architecture Block

open import Agda.Primitive
open import SysFEAT.SOF.0eb95e566855bed9 public -- Model Building Block

ArchitectureBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
ArchitectureBlock u = MixedOrderEntity u

postulate --  ArchitectureBlock is subTypeOf ModelBuildingBlock
  st-0eb95f446855bfcc : ∀ {u v} → (ArchitectureBlock u) ⊏⋆ₑ (ModelBuildingBlock v)

-- == Relationships =======================
