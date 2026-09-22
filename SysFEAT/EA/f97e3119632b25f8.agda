{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Behavior: 
A Conceptual Behavior is a Conceptual Operating Asset that describes any action or reaction of a Conceptual Agent to external or internal circumstances. This includes Value Streams (actions), Conceptual Interaction Scenarios (stories) or Conceptual Service Interfaces.

Documentation : https://framework.sysfeat.com/pages/f97e3119632b25f8.htm

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
st-f97e3119632b25f8-c8b2238961e5385a : ConceptualBehavior ⊏ₑ ConceptualOperatingAsset
st-f97e3119632b25f8-c8b2238961e5385a = polySubTypeOf-identity

--  ConceptualBehavior is subTypeOf BehaviorType
st-f97e3119632b25f8-986cd4ec5ffca3ac : ConceptualBehavior ⊏ₑ BehaviorType
st-f97e3119632b25f8-986cd4ec5ffca3ac = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Conceptual Participant: -}
-- Aggregate Member : Conceptual Participant
ConceptualParticipant : ClassOfClassOfBoundedIndividual
ConceptualParticipant = ClassOfBoundedIndividual



--  ConceptualParticipant is subTypeOf BehaviorParticipant
st-6a7098be67875823-e0e86fad65789c43 : ConceptualParticipant ⊏ₑ BehaviorParticipant
st-6a7098be67875823-e0e86fad65789c43 = polySubTypeOf-identity

--  ConceptualParticipant is subTypeOf ConceptualAgent
st-6a7098be67875823-7c40987055271d04 : ConceptualParticipant ⊏ₑ ConceptualAgent
st-6a7098be67875823-7c40987055271d04 = polySubTypeOf-identity

-- Membership relation
membershipOfConceptualParticipant :  Linkage ConceptualBehavior ConceptualParticipant
membershipOfConceptualParticipant = make_upwardNestingRelation "conceptualParticipant membership" "nested conceptualParticipant"

-- Aggregation relation
aggregationOfConceptualAgentConceptualParticipant :  Linkage ConceptualParticipant ConceptualAgent
aggregationOfConceptualAgentConceptualParticipant = make_Relation "ConceptualAgent aggregation" "aggregated ConceptualAgent"

{- conceptualParticipant : derived relation obtained by composing
   membershipOfConceptualParticipant and aggregationOfConceptualAgentConceptualParticipant
   It directly links an Conceptual Behavior to the final aggregated ConceptualAgent
   hiding the reifying ConceptualParticipant
-}
conceptualParticipant : Linkage ConceptualBehavior ConceptualAgent
conceptualParticipant = membershipOfConceptualParticipant  ∘  aggregationOfConceptualAgentConceptualParticipant


