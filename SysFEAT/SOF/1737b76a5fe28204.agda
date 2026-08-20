{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Activity: 
A Governance Activity is an action done by one or several Stakeholders as part of the governance of an Enduring Initiative.Governance Activity(ies) range from assessments, audit, workflows to remediation plans.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1737b76a5fe28204 where -- ========== Governance Activity

open import Agda.Primitive
open import SysFEAT.SOF.6662916b68dd5f84 public -- Governance Instrument
open import SysFEAT.UpperOntology.342f74b166156e02 public -- Whole Life Individual

GovernanceActivity : ClassOfBoundedIndividual
GovernanceActivity = BoundedIndividual

--  GovernanceActivity withAspect GovernanceInstrument
st-a66fa9d865a9853f : GovernanceActivity ⊏ₐₑ (GovernanceInstrument lzero)
st-a66fa9d865a9853f = polySubTypeOf-identity

--  GovernanceActivity is subTypeOf WholeLifeIndividual
st-366c3c82675c11e3 : GovernanceActivity ⊏ₑ WholeLifeIndividual
st-366c3c82675c11e3 = polySubTypeOf-identity

-- == Relationships =======================

{- Governance Activity Part: -}
-- Aggregate Member : Governance Activity Part
GovernanceActivityPart : ClassOfOrderedEntity (lsuc(lzero))
GovernanceActivityPart = AggregateMember (lsuc(lzero))


-- Membership relation
fEE30A85695D0C0E :  Linkage GovernanceActivity GovernanceActivityPart
fEE30A85695D0C0E = membershipOfAggregateMember

-- Aggregation relation
aggregationOfGovernanceActivityGovernanceActivityPart :  Linkage GovernanceActivityPart GovernanceActivity
aggregationOfGovernanceActivityGovernanceActivityPart = aggregationOfBuildingBlock

{- governanceActivityPart : derived relation obtained by composing
   fEE30A85695D0C0E and aggregationOfGovernanceActivityGovernanceActivityPart
   It directly links an Governance Activity to the final aggregated GovernanceActivity
   hiding the reifying GovernanceActivityPart
-}
governanceActivityPart : Linkage GovernanceActivity GovernanceActivity
governanceActivityPart = fEE30A85695D0C0E  ∘  aggregationOfGovernanceActivityGovernanceActivityPart
