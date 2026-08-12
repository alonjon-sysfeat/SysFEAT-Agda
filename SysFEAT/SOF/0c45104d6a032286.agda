{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Mezzo Operating Asset: 
A Mezzo Operating Asset is the intermediate level between the foundational Individual Mezzo Operating Assets and the overarching Macro Operating Assets.At the mezzo level, aggregates or collections of Micro Operating Assets come together to form larger entities or sub-systems.Boundaries and signals at the mezzo level arise from the interactions and emergent behaviors of micro-level components, yet they also have their own distinct properties and rules not strictly reducible to the micro behaviors.Emergence at the mezzo level can be analyzed:1) Bottom-up: Looking at how interactions and behaviors at the micro level give rise to emergent phenomena, structures, or behaviors at the mezzo level.2)Top-down: Understanding how meso-level structures influence and constrain the behaviors and interactions of the micro-level components within the
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0c45104d6a032286 where -- ========== Mezzo Operating Asset

open import Agda.Primitive
open import SysFEAT.SOF.0c450e776a031ff0 public -- Systemic Level

MezzoOperatingAsset : ∀ (u : Level) → MixedOrderMetaClass u
MezzoOperatingAsset u = ClassOfMixedOrderEntity u

postulate --  MezzoOperatingAsset is subTypeOf SystemicLevel
  st-0c45105e6a0322cf : ∀ {u v} → (MezzoOperatingAsset u) ⊏⋆ₑ (SystemicLevel v)

-- == Relationships =======================
