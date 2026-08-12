{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Behavior: 
An Individual Behavior is an actual instance of Behavior Type that is bounded in time.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e9af119866e86785 where -- ========== Individual Behavior

open import Agda.Primitive
open import SysFEAT.SOF.9f61cf9166833fb7 public -- Individual Operating Asset
open import SysFEAT.SOF.986cd4ec5ffca3ac public -- Behavior Type
open import SysFEAT.SOF.9e3837e46192fcad public -- Individual Agent

IndividualBehavior : ClassOfBoundedIndividual
IndividualBehavior = BoundedIndividual

postulate --  IndividualBehavior is subTypeOf IndividualOperatingAsset
  st-e9af125f66e86910 : IndividualBehavior ⊏ₑ IndividualOperatingAsset

-- == Relationships =======================

{- Individual Behavior Part: 
An Individual Behavior Part is the Aggregate Holonymy of an Individual Behavior in a parent Individual Behavior.
-}
-- Aggregate Member : Individual Behavior Part
IndividualBehaviorPart : ClassOfOrderedEntity (lsuc(lzero))
IndividualBehaviorPart = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfIndividualBehaviorPart :  Linkage IndividualBehavior IndividualBehaviorPart
membershipOfIndividualBehaviorPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualBehaviorIndividualBehaviorPart :  Linkage IndividualBehaviorPart IndividualBehavior
aggregationOfIndividualBehaviorIndividualBehaviorPart = aggregationOfBuildingBlock

{- individualBehaviorPart : derived relation obtained by composing
   membershipOfIndividualBehaviorPart and aggregationOfIndividualBehaviorIndividualBehaviorPart
   It directly links an Individual Behavior to the final aggregated IndividualBehavior
   hiding the reifying IndividualBehaviorPart
-}
individualBehaviorPart : Linkage IndividualBehavior IndividualBehavior
individualBehaviorPart = membershipOfIndividualBehaviorPart  ∘  aggregationOfIndividualBehaviorIndividualBehaviorPart

{- Individual Participant: 
An  Individual Participant is
-}
-- Aggregate Member : Individual Participant
IndividualParticipant : ClassOfOrderedEntity (lsuc(lzero))
IndividualParticipant = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfIndividualParticipant :  Linkage IndividualBehavior IndividualParticipant
membershipOfIndividualParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualAgentIndividualParticipant :  Linkage IndividualParticipant IndividualAgent
aggregationOfIndividualAgentIndividualParticipant = aggregationOfBuildingBlock

{- individualParticipant : derived relation obtained by composing
   membershipOfIndividualParticipant and aggregationOfIndividualAgentIndividualParticipant
   It directly links an Individual Behavior to the final aggregated IndividualAgent
   hiding the reifying IndividualParticipant
-}
individualParticipant : Linkage IndividualBehavior IndividualAgent
individualParticipant = membershipOfIndividualParticipant  ∘  aggregationOfIndividualAgentIndividualParticipant
