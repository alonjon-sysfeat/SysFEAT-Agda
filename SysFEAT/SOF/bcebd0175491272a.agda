{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Stakeholder: 
A Stakeholder is an individual, team, organization, or classes thereof, having an interest in an Initiative.Stakeholders have concerns with respect to the Initiative considered in relation to its environment.

Documentation : https://framework.sysfeat.com/pages/bcebd0175491272a.htm

External references:
  OMG - UAF - Stakeholder: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Stakeholder
  OpenGroup - TOGAF - Definitions - Stakeholder: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_75
  ISO 42010 - Terms - 3.10 - Stakeholder: https://www.iso.org/obp/ui/#iso:std:iso-iec-ieee:42010:ed-2:v1:enStakeholder
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.bcebd0175491272a where -- ========== Stakeholder

open import Agda.Primitive
open import SysFEAT.UpperOntology.29cd2db0661546c4 public -- Individual State
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument

Stakeholder : ClassOfBoundedIndividual
Stakeholder = BoundedIndividual


--  Stakeholder is subTypeOf IndividualState
st-bcebd0175491272a-29cd2db0661546c4 : Stakeholder ⊏ₑ IndividualState
st-bcebd0175491272a-29cd2db0661546c4 = polySubTypeOf-identity

--  Stakeholder withAspect GovernanceInstrument
st-bcebd0175491272a-6662916b68dd5f84 : Stakeholder ⊏ₐₑ (GovernanceInstrument lzero)
st-bcebd0175491272a-6662916b68dd5f84 = polySubTypeOf-identity


-- == Relations =======================
