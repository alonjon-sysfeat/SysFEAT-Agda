{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Asset: 
A Policy Asset is any topic related to policy definitions.It ranges from the different kinds of Directives (Business Policy, Architecture principle, Behavioral Rule, etc.),  to classification of policies (Policy Category) up to an entire set of policies (Policy Framework).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.9397c3d86877842f where -- ========== Policy Asset

open import Agda.Primitive
open import SysFEAT.SOF.9397b45268777e3b public -- Architecture Block

PolicyAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u
PolicyAsset u = MixedOrderEntity u

postulate --  PolicyAsset is subTypeOf ArchitectureBlock
  st-9397c71568778cb8 : ∀ {u v} → (PolicyAsset u) ⊏⋆ₑ (ArchitectureBlock v)

-- == Relationships =======================
