{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Process: 
A Technology Process is a  Action Process Type that describes a typical course of action intended to produce Technology Outcome Events, through the involvement of Technology Systems (System Participant).During its course of action, a Technology Process consumes or produces Technology Objects:1) It may memorize or access Technology Objects from and to its Process Stores.2) It may receive Technology Objects at its boundary: Triggering Technology Outcome Events.3) It may signal the production of Technology Objects at its boundary: Produced Technology Outcome Events.The course of actions of a Technology Process is constrained by the application of rules (Operating Rule Enforcement) that define what is allowed and not allowed to do.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.97f8985d65ae4d42 where -- ========== Technology Process

open import Agda.Primitive
open import SysFEAT.EA.97f89a8865ae5279 public -- Technology Behavior
open import SysFEAT.EA.e2ef095b62147bf9 public -- Resource Action Process
open import SysFEAT.EA.0cbd1fa663fe18ac public -- Technology System

TechnologyProcess : ClassOfClassOfBoundedIndividual
TechnologyProcess = ClassOfBoundedIndividual

--  TechnologyProcess is subTypeOf TechnologyBehavior
st-97f89af165ae54eb : TechnologyProcess ⊏ₑ TechnologyBehavior
st-97f89af165ae54eb = polySubTypeOf-identity

--  TechnologyProcess is subTypeOf ResourceActionProcess
st-6a70db4b67878bd0 : TechnologyProcess ⊏ₑ ResourceActionProcess
st-6a70db4b67878bd0 = polySubTypeOf-identity

-- == Relationships =======================

{- System Participant: -}
-- Aggregate Member : System Participant
SystemParticipant : ClassOfClassOfIndividual
SystemParticipant = ClassOfIndividual

-- Membership relation
membershipOfSystemParticipant :  Linkage TechnologyProcess SystemParticipant
membershipOfSystemParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTechnologySystemSystemParticipant :  Linkage SystemParticipant TechnologySystem
aggregationOfTechnologySystemSystemParticipant = aggregationOfBuildingBlock

{- systemParticipant : derived relation obtained by composing
   membershipOfSystemParticipant and aggregationOfTechnologySystemSystemParticipant
   It directly links an Technology Process to the final aggregated TechnologySystem
   hiding the reifying SystemParticipant
-}
systemParticipant : Linkage TechnologyProcess TechnologySystem
systemParticipant = membershipOfSystemParticipant  ∘  aggregationOfTechnologySystemSystemParticipant
