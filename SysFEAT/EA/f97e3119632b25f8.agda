{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Behavior: 
A Conceptual Behavior is a Conceptual Operating Asset that describes any action or reaction of a Conceptual Agent to external or internal circumstances. This includes Value Streams (actions), Conceptual Interaction Scenarios (stories) or Conceptual Service Interfaces.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f97e3119632b25f8 where -- ========== Conceptual Behavior

open import Agda.Primitive
open import SysFEAT.EA.c8b2238961e5385a public -- Conceptual Operating Asset
open import SysFEAT.SOF.986cd4ec5ffca3ac public -- Behavior Type
open import SysFEAT.EA.7c40987055271d04 public -- Conceptual Agent

ConceptualBehavior : ClassOfClassOfBoundedIndividual
ConceptualBehavior = ClassOfBoundedIndividual

--  ConceptualBehavior is subTypeOf ConceptualOperatingAsset
st-f97e3ae9632b2f8f : ConceptualBehavior ⊏ₑ ConceptualOperatingAsset
st-f97e3ae9632b2f8f = polySubTypeOf-identity

--  ConceptualBehavior is subTypeOf BehaviorType
st-6a70996267875a47 : ConceptualBehavior ⊏ₑ BehaviorType
st-6a70996267875a47 = polySubTypeOf-identity

-- == Relationships =======================

{- Conceptual Participant: -}
-- Aggregate Member : Conceptual Participant
ConceptualParticipant : ClassOfClassOfIndividual
ConceptualParticipant = ClassOfIndividual

-- Membership relation
membershipOfConceptualParticipant :  Linkage ConceptualBehavior ConceptualParticipant
membershipOfConceptualParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualAgentConceptualParticipant :  Linkage ConceptualParticipant ConceptualAgent
aggregationOfConceptualAgentConceptualParticipant = aggregationOfBuildingBlock

{- conceptualParticipant : derived relation obtained by composing
   membershipOfConceptualParticipant and aggregationOfConceptualAgentConceptualParticipant
   It directly links an Conceptual Behavior to the final aggregated ConceptualAgent
   hiding the reifying ConceptualParticipant
-}
conceptualParticipant : Linkage ConceptualBehavior ConceptualAgent
conceptualParticipant = membershipOfConceptualParticipant  ∘  aggregationOfConceptualAgentConceptualParticipant
