{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Process: 
Individual Process is the root instance of Action Process Type.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a273b4f465b7a81f where -- ========== Individual Process

open import Agda.Primitive
open import SysFEAT.SOF.e9af119866e86785 public -- Individual Behavior
open import SysFEAT.SOF.d682ef5e56144e77 public -- Action Process Type
open import SysFEAT.SOF.9e3837e46192fcad public -- Individual Agent

IndividualProcess : ClassOfBoundedIndividual
IndividualProcess = BoundedIndividual

--  IndividualProcess is subTypeOf IndividualBehavior
st-a273b51465b7a880 : IndividualProcess ⊏ₑ IndividualBehavior
st-a273b51465b7a880 = polySubTypeOf-identity

-- == Relationships =======================

{- Individual Process Part: -}
-- Aggregate Member : Individual Process Part
IndividualProcessPart : ClassOfOrderedEntity (lsuc(lzero))
IndividualProcessPart = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfIndividualProcessPart :  Linkage IndividualProcess IndividualProcessPart
membershipOfIndividualProcessPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualProcessIndividualProcessPart :  Linkage IndividualProcessPart IndividualProcess
aggregationOfIndividualProcessIndividualProcessPart = aggregationOfBuildingBlock

{- individualProcessPart : derived relation obtained by composing
   membershipOfIndividualProcessPart and aggregationOfIndividualProcessIndividualProcessPart
   It directly links an Individual Process to the final aggregated IndividualProcess
   hiding the reifying IndividualProcessPart
-}
individualProcessPart : Linkage IndividualProcess IndividualProcess
individualProcessPart = membershipOfIndividualProcessPart  ∘  aggregationOfIndividualProcessIndividualProcessPart

{- Active Participant: 
An Active Participant is the Aggregate Holonymy of an Individual Agent that indicates that the aggregated Individual Agent is an active participant of the Individual Process.
-}
-- Aggregate Member : Active Participant
ActiveParticipant : ClassOfOrderedEntity (lsuc(lzero))
ActiveParticipant = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfActiveParticipant :  Linkage IndividualProcess ActiveParticipant
membershipOfActiveParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualAgentActiveParticipant :  Linkage ActiveParticipant IndividualAgent
aggregationOfIndividualAgentActiveParticipant = aggregationOfBuildingBlock

{- activeParticipant : derived relation obtained by composing
   membershipOfActiveParticipant and aggregationOfIndividualAgentActiveParticipant
   It directly links an Individual Process to the final aggregated IndividualAgent
   hiding the reifying ActiveParticipant
-}
activeParticipant : Linkage IndividualProcess IndividualAgent
activeParticipant = membershipOfActiveParticipant  ∘  aggregationOfIndividualAgentActiveParticipant
