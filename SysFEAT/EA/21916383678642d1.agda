{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Outcome Event: 
An Conceptual Outcome Event is a conceptual Conceptual Event that signals the happening of a change in the state of a Conceptual Entity Asset (Conceptual Outcome), produced by a Conceptual Agent, for the benefits of an internal or external consumer (especially Customers).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.21916383678642d1 where -- ========== Conceptual Outcome Event

open import Agda.Primitive
open import SysFEAT.SOF.30223b5c5ec90c01 public -- Outcome Event
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset

ConceptualOutcomeEvent : ClassOfClassOfIndividual
ConceptualOutcomeEvent = ClassOfIndividual

--  ConceptualOutcomeEvent is subTypeOf OutcomeEvent
st-21918fa267865879 : ConceptualOutcomeEvent ⊏ₑ OutcomeEvent
st-21918fa267865879 = polySubTypeOf-identity

-- == Relationships =======================

{- Conceptual Outcome: 
The changed state of a Conceptual Entity Asset that is signaled as being an Conceptual Outcome Event.A Conceptual Outcome  is a Conceptual Entity Asset or a state of a Conceptual Entity Asset that is th subject of a transaction.A Conceptual Outcome is the result of a Conceptual Behavior of a producer Conceptual Agent and is signaled as an Conceptual Outcome Event that benefits (value) to a consumer Conceptual Agent.
-}
-- Aggregate Member : Conceptual Outcome
ConceptualOutcome : ClassOfClassOfIndividual
ConceptualOutcome = ClassOfIndividual

-- Membership relation
membershipOfConceptualOutcome :  Linkage ConceptualOutcomeEvent ConceptualOutcome
membershipOfConceptualOutcome = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityAssetConceptualOutcome :  Linkage ConceptualOutcome ConceptualEntityAsset
aggregationOfConceptualEntityAssetConceptualOutcome = aggregationOfBuildingBlock

{- conceptualOutcome : derived relation obtained by composing
   membershipOfConceptualOutcome and aggregationOfConceptualEntityAssetConceptualOutcome
   It directly links an Conceptual Outcome Event to the final aggregated ConceptualEntityAsset
   hiding the reifying ConceptualOutcome
-}
conceptualOutcome : Linkage ConceptualOutcomeEvent ConceptualEntityAsset
conceptualOutcome = membershipOfConceptualOutcome  ∘  aggregationOfConceptualEntityAssetConceptualOutcome
