{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Journey: 
A Customer Journey is the complete sum of experiences that Customers go through when interacting with the company (Touch Point). Instead of looking at just a part of a transaction or experience, a Customer Journey documents the full experience of being a Customer.

Documentation : https://framework.sysfeat.com/pages/d170d6a25be734ed.htm

External references:
  OpenGroup - OAA - Definition - Customer Journey: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_customer_journey
  OMG - BACM - CustomerJourney: https://www.omg.org/spec/BACM/1.0/PDF#page=59
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d170d6a25be734ed where -- ========== Customer Journey

open import Agda.Primitive
open import SysFEAT.EA.8a5c926e5c0d632c public -- Customer Activity
open import SysFEAT.EA.ae7c99be60234bcf public -- Business Line
open import SysFEAT.EA.952e9d71672849ba public -- Customer Journey Category
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.EA.1a5fcc995fd7834d public -- Customer Journey Phase
open import SysFEAT.EA.d17034875be85304 public -- Job-to-be-done
open import SysFEAT.EA.21ed240a689c08df public -- Value Proposition

CustomerJourney : ClassOfClassOfBoundedIndividual
CustomerJourney = ClassOfBoundedIndividual

--  CustomerJourney is subTypeOf CustomerActivity
st-d170d6a25be734ed-8a5c926e5c0d632c : CustomerJourney ⊏ₑ CustomerActivity
st-d170d6a25be734ed-8a5c926e5c0d632c = polySubTypeOf-identity

-- == Relationships =======================

{- Categorizing Business Line: -}
categorizingBusinessLine :  Linkage CustomerJourney BusinessLine
categorizingBusinessLine = make_classOfHolonymy "Categorizing Business Line" "Categorizing Business Line"

postulate -- categorizingBusinessLine is subTypeOf categoryOfArchitectureBlock
  st-ae7c9a2b60234de6-f69620606a0f9c94  : categorizingBusinessLine   ⊏⋆ᵣ  categoryOfArchitectureBlock  {lsuc(lsuc(lzero))}

{- Customer Journey Category: 
A categorization of Customer Journeys.
-}
customerJourneyCategory :  Linkage CustomerJourney CustomerJourneyCategory
customerJourneyCategory = make_instanceOf "Customer Journey Category" "Customer Journey Category"


{- Sequence: -}
-- Aggregate Member : Sequence
Sequence : ClassOfClassOfIndividual
Sequence = ClassOfIndividual

-- Membership relation
membershipOfSequence :  Linkage CustomerJourney Sequence
membershipOfSequence = make_upwardNestingRelation "sequence membership" "nested sequence"

-- Aggregation relation
aggregationOfBehavioralEventSequence :  Linkage Sequence BehavioralEvent
aggregationOfBehavioralEventSequence = make_Relation "BehavioralEvent aggregation" "aggregated BehavioralEvent"

{- sequence : derived relation obtained by composing
   membershipOfSequence and aggregationOfBehavioralEventSequence
   It directly links an Customer Journey to the final aggregated BehavioralEvent
   hiding the reifying Sequence
-}
sequence : Linkage CustomerJourney BehavioralEvent
sequence = membershipOfSequence  ∘  aggregationOfBehavioralEventSequence



{- Sub Customer Journey: 
A client sub-journey is a client journey resulting from another client journey. It is used to describe the hierarchy of journeys. Like any client journey, it describes interactions between the enterprise and a persona for a given result.
-}
-- Aggregate Member : Sub Customer Journey
SubCustomerJourney : ClassOfClassOfIndividual
SubCustomerJourney = ClassOfIndividual

-- Membership relation
membershipOfSubCustomerJourney :  Linkage CustomerJourney SubCustomerJourney
membershipOfSubCustomerJourney = make_upwardNestingRelation "subCustomerJourney membership" "nested subCustomerJourney"

-- Aggregation relation
aggregationOfCustomerJourneySubCustomerJourney :  Linkage SubCustomerJourney CustomerJourney
aggregationOfCustomerJourneySubCustomerJourney = make_Relation "CustomerJourney aggregation" "aggregated CustomerJourney"

{- subCustomerJourney : derived relation obtained by composing
   membershipOfSubCustomerJourney and aggregationOfCustomerJourneySubCustomerJourney
   It directly links an Customer Journey to the final aggregated CustomerJourney
   hiding the reifying SubCustomerJourney
-}
subCustomerJourney : Linkage CustomerJourney CustomerJourney
subCustomerJourney = membershipOfSubCustomerJourney  ∘  aggregationOfCustomerJourneySubCustomerJourney



{- Phase Status: 
A phase context defines the context for carrying out the action plan. It is used to schedule the phases for a single client journey.
-}
-- Aggregate Member : Phase Status
PhaseStatus : ClassOfClassOfIndividual
PhaseStatus = ClassOfIndividual

-- Membership relation
membershipOfPhaseStatus :  Linkage CustomerJourney PhaseStatus
membershipOfPhaseStatus = make_upwardNestingRelation "phaseStatus membership" "nested phaseStatus"

-- Aggregation relation
aggregationOfCustomerJourneyPhasePhaseStatus :  Linkage PhaseStatus CustomerJourneyPhase
aggregationOfCustomerJourneyPhasePhaseStatus = make_Relation "CustomerJourneyPhase aggregation" "aggregated CustomerJourneyPhase"

{- phaseStatus : derived relation obtained by composing
   membershipOfPhaseStatus and aggregationOfCustomerJourneyPhasePhaseStatus
   It directly links an Customer Journey to the final aggregated CustomerJourneyPhase
   hiding the reifying PhaseStatus
-}
phaseStatus : Linkage CustomerJourney CustomerJourneyPhase
phaseStatus = membershipOfPhaseStatus  ∘  aggregationOfCustomerJourneyPhasePhaseStatus



{- Customer Journey Step: 
A client journey step is the basic elementary advancement unit of a client via a client journey phase.
-}
-- Aggregate Member : Customer Journey Step
CustomerJourneyStep : ClassOfClassOfIndividual
CustomerJourneyStep = ClassOfIndividual

-- Membership relation
membershipOfCustomerJourneyStep :  Linkage CustomerJourney CustomerJourneyStep
membershipOfCustomerJourneyStep = make_upwardNestingRelation "customerJourneyStep membership" "nested customerJourneyStep"

-- Aggregation relation
aggregationOfJobtobedoneCustomerJourneyStep :  Linkage CustomerJourneyStep Jobtobedone
aggregationOfJobtobedoneCustomerJourneyStep = make_Relation "Jobtobedone aggregation" "aggregated Jobtobedone"

{- customerJourneyStep : derived relation obtained by composing
   membershipOfCustomerJourneyStep and aggregationOfJobtobedoneCustomerJourneyStep
   It directly links an Customer Journey to the final aggregated Jobtobedone
   hiding the reifying CustomerJourneyStep
-}
customerJourneyStep : Linkage CustomerJourney Jobtobedone
customerJourneyStep = membershipOfCustomerJourneyStep  ∘  aggregationOfJobtobedoneCustomerJourneyStep

postulate -- customerJourneyStep is subTypeOf customerActivityMember
  st-c581da866023333b-ec200f5b630f47c5  : customerJourneyStep   ⊏⋆ᵣ  customerActivityMember 


{- Touch Point: 
A Touch Point describes an interaction point between a persona and an enterprise where a Business Capability is exposed as a Value Proposition to the persona as a means to achieve its Job-to-be-done.
-}
-- Aggregate Member : Touch Point
TouchPoint : ClassOfClassOfIndividual
TouchPoint = ClassOfIndividual

-- Membership relation
membershipOfTouchPoint :  Linkage CustomerJourney TouchPoint
membershipOfTouchPoint = make_upwardNestingRelation "touchPoint membership" "nested touchPoint"

-- Aggregation relation
aggregationOfValuePropositionTouchPoint :  Linkage TouchPoint ValueProposition
aggregationOfValuePropositionTouchPoint = make_Relation "ValueProposition aggregation" "aggregated ValueProposition"

{- touchPoint : derived relation obtained by composing
   membershipOfTouchPoint and aggregationOfValuePropositionTouchPoint
   It directly links an Customer Journey to the final aggregated ValueProposition
   hiding the reifying TouchPoint
-}
touchPoint : Linkage CustomerJourney ValueProposition
touchPoint = membershipOfTouchPoint  ∘  aggregationOfValuePropositionTouchPoint


