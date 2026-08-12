{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Event Concept: 
 An Event Concept is a Conceptual Entity Asset that represents a type of change used to draw the temporal boundaries of Conceptual Entitys.Examples:- order placing- order delivery- birth- death
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.362ff4b55b3c45e6 where -- ========== Event Concept

open import Agda.Primitive
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset
open import SysFEAT.SOF.362ff9085b3c4933 public -- Period Type

EventConcept : ClassOfClassOfBoundedIndividual
EventConcept = ClassOfBoundedIndividual

postulate --  EventConcept is subTypeOf ConceptualEntityAsset
  st-5e4060fc5b528656 : EventConcept ⊏ₑ ConceptualEntityAsset

-- == Relationships =======================

{- Specialized Event: -}
specializedEvent :  Linkage EventConcept EventConcept
specializedEvent = make_subTypeOf "Specialized Event" "specializedEvent"

postulate -- specializedEvent is subTypeOf specializedBusinessObject
  st-325a375f66f34126-325a375966f33f85  : specializedEvent   ⊏⋆ᵣ  specializedBusinessObject 

{- Periodization: -}
-- Aggregate Member : Periodization
Periodization : ClassOfClassOfIndividual
Periodization = ClassOfIndividual

-- Membership relation
membershipOfPeriodization :  Linkage EventConcept Periodization
membershipOfPeriodization = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPeriodTypePeriodization :  Linkage Periodization PeriodType
aggregationOfPeriodTypePeriodization = aggregationOfBuildingBlock

{- periodization : derived relation obtained by composing
   membershipOfPeriodization and aggregationOfPeriodTypePeriodization
   It directly links an Event Concept to the final aggregated PeriodType
   hiding the reifying Periodization
-}
periodization : Linkage EventConcept PeriodType
periodization = membershipOfPeriodization  ∘  aggregationOfPeriodTypePeriodization

{- Event Part: -}
-- Aggregate Member : Event Part
EventPart : ClassOfClassOfIndividual
EventPart = ClassOfIndividual

-- Membership relation
membershipOfEventPart :  Linkage EventConcept EventPart
membershipOfEventPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfEventConceptEventPart :  Linkage EventPart EventConcept
aggregationOfEventConceptEventPart = aggregationOfBuildingBlock

{- eventPart : derived relation obtained by composing
   membershipOfEventPart and aggregationOfEventConceptEventPart
   It directly links an Event Concept to the final aggregated EventConcept
   hiding the reifying EventPart
-}
eventPart : Linkage EventConcept EventConcept
eventPart = membershipOfEventPart  ∘  aggregationOfEventConceptEventPart
