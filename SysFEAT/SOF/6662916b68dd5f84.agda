{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Instrument: 
Governance Instruments include all instruments used to monitor and steer transformation Initiatives. They include incidents, assessments, indicators and their templates.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6662916b68dd5f84 where -- ========== Governance Instrument

open import Agda.Primitive
open import SysFEAT.SOF.0f641043685975c9 public -- Governance Building Block

GovernanceInstrument : ∀ (u : Level) → ClassOfMixedOrderEntity u
GovernanceInstrument u = MixedOrderEntity u

postulate --  GovernanceInstrument is subTypeOf GovernanceBuildingBlock
  st-92a7177667cf5f2c : ∀ {u v} → (GovernanceInstrument u) ⊏⋆ₑ (GovernanceBuildingBlock v)

-- == Relationships =======================
