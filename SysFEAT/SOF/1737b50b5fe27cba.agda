{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Event: 
A Governance Event is any event that has an impact on the management and governance of an Enduring Initiative.This includes the result of Assessments, Decisions, recorded Incidents, Drivers, etc.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1737b50b5fe27cba where -- ========== Governance Event

open import Agda.Primitive
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block

GovernanceEvent : ClassOfBoundedIndividual
GovernanceEvent = BoundedIndividual

postulate --  GovernanceEvent withAspect GovernanceInstrument
  st-a66fa9e065a9856b : GovernanceEvent ⊏ₐₑ (GovernanceInstrument lzero)

postulate --  GovernanceEvent is subTypeOf BoundedIndividual
  st-366c3cd3675c1299 : GovernanceEvent ⊏ₑ BoundedIndividual

-- == Relationships =======================

{- Event Subject: -}
eventSubject : ∀ {u} →  Linkage GovernanceEvent (AssetBlock u)
eventSubject = make_Relation "Event Subject" "eventSubject"

postulate -- eventSubject is subTypeOf existentialDependency
  st-0f642d4d6859ad70-cbfce7da685358e9  : eventSubject  {lzero}  ⊏⋆ᵣ  existentialDependency {lzero} {lzero}
