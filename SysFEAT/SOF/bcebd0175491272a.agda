{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Stakeholder: 
A Stakeholder is an individual, team, organization, or classes thereof, having an interest in an Initiative.Stakeholders have concerns with respect to the Initiative considered in relation to its environment.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.bcebd0175491272a where -- ========== Stakeholder

open import Agda.Primitive
open import SysFEAT.UpperOntology.29cd2db0661546c4 public -- Individual State
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument

Stakeholder : ClassOfBoundedIndividual
Stakeholder = BoundedIndividual

--  Stakeholder is subTypeOf IndividualState
st-910195fd550a2db4 : Stakeholder ⊏ₑ IndividualState
st-910195fd550a2db4 = polySubTypeOf-identity

--  Stakeholder withAspect GovernanceInstrument
st-a66fa9d165a98513 : Stakeholder ⊏ₐₑ (GovernanceInstrument lzero)
st-a66fa9d165a98513 = polySubTypeOf-identity

-- == Relationships =======================
