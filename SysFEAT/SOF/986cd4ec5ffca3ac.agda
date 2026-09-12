{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Behavior Type: 
A Behavior Type is an Operating Asset Type that describes any action or reaction of an Agent Type to external or internal Behavioral Events. Behavior Types include Action Process Typees (action), Interaction Process Types (stories) or interactions (Service Interface).The course of actions of a Behavior Type is constrained (Rule Enforcement) by the application of Behavioral Rules that define what is allowed and not allowed to do.

Documentation : https://framework.sysfeat.com/pages/986cd4ec5ffca3ac.htm

External references:
  OpenGroup - ArchiMate - Behavior-Elements: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Generic-Metamodel.html#sec-Behavior-Elements
  OMG - UML - Behavior: https://www.omg.org/spec/UML/2.5.1/PDF#page=328
  OMG - KerML - Behavior: https://www.omg.org/spec/KerML/1.0/PDF#page=73
  WordNet - Behavior and Activity: https://en-word.net/ili/i41782
  ISO 15926 - ClassOfActivity: https://15926.blog/topics/data-model/index.htm#ClassOfActivity
  Russell Ackoff - System of Concepts - Behavior: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#SystemBehavior
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.986cd4ec5ffca3ac where -- ========== Behavior Type

open import Agda.Primitive
open import SysFEAT.SOF.a371a43b5b865817 public -- Operating Asset Type
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type

BehaviorType : ClassOfClassOfBoundedIndividual
BehaviorType = ClassOfBoundedIndividual

--  BehaviorType is subTypeOf OperatingAssetType
st-986cd52d5ffca44c : BehaviorType ⊏ₑ OperatingAssetType
st-986cd52d5ffca44c = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Behavior: -}
specializedBehavior :  Linkage BehaviorType BehaviorType
specializedBehavior = make_subTypeOf "Specialized Behavior" "Specialized Behavior"

postulate -- specializedBehavior is subTypeOf specializedOperatingAsset
  st-2b5b452d66ed5855-6a70772167873276  : specializedBehavior   ⊏⋆ᵣ  specializedOperatingAsset 

{- Realized Behavior: -}
realizedBehavior :  Linkage BehaviorType BehaviorType
realizedBehavior = make_subTypeOf "Realized Behavior" "Realized Behavior"

postulate -- realizedBehavior is subTypeOf realizedOperatingAsset
  st-2b5b45a466ed5920-7dc193da6849536c  : realizedBehavior   ⊏⋆ᵣ  realizedOperatingAsset 

{- Behavior Participant: 
A Behavior Participant is the participation of an Agent Type in a Behavior Type.
-}
-- Aggregate Member : Behavior Participant
BehaviorParticipant : ClassOfClassOfIndividual
BehaviorParticipant = ClassOfIndividual

-- Membership relation
membershipOfBehaviorParticipant :  Linkage BehaviorType BehaviorParticipant
membershipOfBehaviorParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeBehaviorParticipant :  Linkage BehaviorParticipant AgentType
aggregationOfAgentTypeBehaviorParticipant = aggregationOfBuildingBlock

{- behaviorParticipant : derived relation obtained by composing
   membershipOfBehaviorParticipant and aggregationOfAgentTypeBehaviorParticipant
   It directly links an Behavior Type to the final aggregated AgentType
   hiding the reifying BehaviorParticipant
-}
behaviorParticipant : Linkage BehaviorType AgentType
behaviorParticipant = membershipOfBehaviorParticipant  ∘  aggregationOfAgentTypeBehaviorParticipant

{- Behavior Part: 
A composed Behavior Type that is a part of the parent Behavior Type.
-}
-- Aggregate Member : Behavior Part
BehaviorPart : ClassOfClassOfIndividual
BehaviorPart = ClassOfIndividual

-- Membership relation
membershipOfBehaviorPart :  Linkage BehaviorType BehaviorPart
membershipOfBehaviorPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBehaviorTypeBehaviorPart :  Linkage BehaviorPart BehaviorType
aggregationOfBehaviorTypeBehaviorPart = aggregationOfBuildingBlock

{- behaviorPart : derived relation obtained by composing
   membershipOfBehaviorPart and aggregationOfBehaviorTypeBehaviorPart
   It directly links an Behavior Type to the final aggregated BehaviorType
   hiding the reifying BehaviorPart
-}
behaviorPart : Linkage BehaviorType BehaviorType
behaviorPart = membershipOfBehaviorPart  ∘  aggregationOfBehaviorTypeBehaviorPart
