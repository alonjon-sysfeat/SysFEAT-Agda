{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Entity: 
A Conceptual Entity is the representation of any tangible or intanglible resource or state of such resource that is of interest to understand the enterprises, its data, resources and activities.A Conceptual Entity is either a Concept or a State Concept.Example:-  Person  is a Conceptual Entity of type Concept, Its temporal boundaries are is birth and its death (see Event Concept).-  Employee  is a Conceptual Entity of type State Concept: it is a state of a  person . Its temporal boundaries are its hiring and its departure.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.229b34eb5b3f79d2 where -- ========== Conceptual Entity

open import Agda.Primitive
open import SysFEAT.SOF.d6cd2cea5ab98e5f public -- Information Entity
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset
open import SysFEAT.EA.190c2cd368965534 public -- Concept Property
open import SysFEAT.EA.362ff4b55b3c45e6 public -- Event Concept

ConceptualEntity : ClassOfClassOfBoundedIndividual
ConceptualEntity = ClassOfBoundedIndividual

--  ConceptualEntity is subTypeOf InformationEntity
st-240379045fc7d66f : ConceptualEntity ⊏ₑ InformationEntity
st-240379045fc7d66f = polySubTypeOf-identity

--  ConceptualEntity is subTypeOf ConceptualEntityAsset
st-4150ca9a5ecc52c8 : ConceptualEntity ⊏ₑ ConceptualEntityAsset
st-4150ca9a5ecc52c8 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Concept: -}
specializedBusinessConcept :  Linkage ConceptualEntity ConceptualEntity
specializedBusinessConcept = make_subTypeOf "Specialized Business Concept" "specializedBusinessConcept"

postulate -- specializedBusinessConcept is subTypeOf specializedBusinessObject
  st-325a344766f33adf-325a375966f33f85  : specializedBusinessConcept   ⊏⋆ᵣ  specializedBusinessObject 
postulate -- specializedBusinessConcept is subTypeOf specializedInformationEntity
  st-325a344766f33adf-325a37b966f34da2  : specializedBusinessConcept   ⊏⋆ᵣ  specializedInformationEntity 

{- Concept Attribute: 
Immutable characteristics of a Conceptual Entity.The default cardinality is [0..1] which means that Concept Property optional.
-}
-- Aggregate Member : Concept Attribute
ConceptAttribute : ClassOfClassOfIndividual
ConceptAttribute = ClassOfIndividual

-- Membership relation
membershipOfConceptAttribute :  Linkage ConceptualEntity ConceptAttribute
membershipOfConceptAttribute = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptPropertyConceptAttribute :  Linkage ConceptAttribute ConceptProperty
aggregationOfConceptPropertyConceptAttribute = aggregationOfBuildingBlock

{- conceptAttribute : derived relation obtained by composing
   membershipOfConceptAttribute and aggregationOfConceptPropertyConceptAttribute
   It directly links an Conceptual Entity to the final aggregated ConceptProperty
   hiding the reifying ConceptAttribute
-}
conceptAttribute : Linkage ConceptualEntity ConceptProperty
conceptAttribute = membershipOfConceptAttribute  ∘  aggregationOfConceptPropertyConceptAttribute

{- End Event: -}
-- Aggregate Member : End Event
EndEvent : ClassOfClassOfIndividual
EndEvent = ClassOfIndividual

-- Membership relation
membershipOfEndEvent :  Linkage ConceptualEntity EndEvent
membershipOfEndEvent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfEventConceptEndEvent :  Linkage EndEvent EventConcept
aggregationOfEventConceptEndEvent = aggregationOfBuildingBlock

{- endEvent : derived relation obtained by composing
   membershipOfEndEvent and aggregationOfEventConceptEndEvent
   It directly links an Conceptual Entity to the final aggregated EventConcept
   hiding the reifying EndEvent
-}
endEvent : Linkage ConceptualEntity EventConcept
endEvent = membershipOfEndEvent  ∘  aggregationOfEventConceptEndEvent

{- Intermediate Event: -}
-- Aggregate Member : Intermediate Event
IntermediateEvent : ClassOfClassOfIndividual
IntermediateEvent = ClassOfIndividual

-- Membership relation
membershipOfIntermediateEvent :  Linkage ConceptualEntity IntermediateEvent
membershipOfIntermediateEvent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfEventConceptIntermediateEvent :  Linkage IntermediateEvent EventConcept
aggregationOfEventConceptIntermediateEvent = aggregationOfBuildingBlock

{- intermediateEvent : derived relation obtained by composing
   membershipOfIntermediateEvent and aggregationOfEventConceptIntermediateEvent
   It directly links an Conceptual Entity to the final aggregated EventConcept
   hiding the reifying IntermediateEvent
-}
intermediateEvent : Linkage ConceptualEntity EventConcept
intermediateEvent = membershipOfIntermediateEvent  ∘  aggregationOfEventConceptIntermediateEvent

{- Start Event: -}
-- Aggregate Member : Start Event
StartEvent : ClassOfClassOfIndividual
StartEvent = ClassOfIndividual

-- Membership relation
membershipOfStartEvent :  Linkage ConceptualEntity StartEvent
membershipOfStartEvent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfEventConceptStartEvent :  Linkage StartEvent EventConcept
aggregationOfEventConceptStartEvent = aggregationOfBuildingBlock

{- startEvent : derived relation obtained by composing
   membershipOfStartEvent and aggregationOfEventConceptStartEvent
   It directly links an Conceptual Entity to the final aggregated EventConcept
   hiding the reifying StartEvent
-}
startEvent : Linkage ConceptualEntity EventConcept
startEvent = membershipOfStartEvent  ∘  aggregationOfEventConceptStartEvent

{- Concept Relationship: 
Relationship between a source Conceptual Entity and a target Conceptual Entity.Relationsnhips can be between Concepts, between State Concepts or between Concepts and State Concepts.For instance, the  Butterfly  State Concept has a relationship with the  Wing  Concept.
-}
-- Aggregate Member : Concept Relationship
ConceptRelationship : ClassOfClassOfIndividual
ConceptRelationship = ClassOfIndividual

-- Membership relation
membershipOfConceptRelationship :  Linkage ConceptualEntity ConceptRelationship
membershipOfConceptRelationship = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityConceptRelationship :  Linkage ConceptRelationship ConceptualEntity
aggregationOfConceptualEntityConceptRelationship = aggregationOfBuildingBlock

{- conceptRelationship : derived relation obtained by composing
   membershipOfConceptRelationship and aggregationOfConceptualEntityConceptRelationship
   It directly links an Conceptual Entity to the final aggregated ConceptualEntity
   hiding the reifying ConceptRelationship
-}
conceptRelationship : Linkage ConceptualEntity ConceptualEntity
conceptRelationship = membershipOfConceptRelationship  ∘  aggregationOfConceptualEntityConceptRelationship
