{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Entity: 
A Conceptual Entity is the representation of any tangible or intanglible resource or state of such resource that is of interest to understand the enterprises, its data, resources and activities.A Conceptual Entity is either a Concept or a State Concept.Example:-  Person  is a Conceptual Entity of type Concept, Its temporal boundaries are is birth and its death (see Event Concept).-  Employee  is a Conceptual Entity of type State Concept: it is a state of a  person . Its temporal boundaries are its hiring and its departure.

Documentation : https://framework.sysfeat.com/pages/229b34eb5b3f79d2.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
  OMG - SBVR - Concept: https://www.omg.org/spec/SBVR/1.5/PDF#page=38
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.229b34eb5b3f79d2 where -- ========== Conceptual Entity

open import Agda.Primitive
open import SysFEAT.SOF.d6cd2cea5ab98e5f public -- Information Entity
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset
open import SysFEAT.EA.362ff4b55b3c45e6 public -- Event Concept
open import SysFEAT.EA.190c2cd368965534 public -- Concept Property

ConceptualEntity : ClassOfClassOfBoundedIndividual
ConceptualEntity = ClassOfBoundedIndividual

--  ConceptualEntity is subTypeOf InformationEntity
st-229b34eb5b3f79d2-d6cd2cea5ab98e5f : ConceptualEntity ⊏ₑ InformationEntity
st-229b34eb5b3f79d2-d6cd2cea5ab98e5f = polySubTypeOf-identity

--  ConceptualEntity is subTypeOf ConceptualEntityAsset
st-229b34eb5b3f79d2-362fc8045b3c3e65 : ConceptualEntity ⊏ₑ ConceptualEntityAsset
st-229b34eb5b3f79d2-362fc8045b3c3e65 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Concept: -}
specializedBusinessConcept :  Linkage ConceptualEntity ConceptualEntity
specializedBusinessConcept = make_subTypeOf "Specialized Business Concept" "Specialized Business Concept"

postulate -- specializedBusinessConcept is subTypeOf specializedBusinessObject
  st-325a344766f33adf-325a375966f33f85  : specializedBusinessConcept   ⊏⋆ᵣ  specializedBusinessObject 
postulate -- specializedBusinessConcept is subTypeOf specializedInformationEntity
  st-325a344766f33adf-325a37b966f34da2  : specializedBusinessConcept   ⊏⋆ᵣ  specializedInformationEntity 

{- End Event: -}
-- Aggregate Member : End Event
EndEvent : ClassOfClassOfIndividual
EndEvent = ClassOfIndividual

-- Membership relation
membershipOfEndEvent :  Linkage ConceptualEntity EndEvent
membershipOfEndEvent = make_upwardNestingRelation "endEvent membership" "nested endEvent"

-- Aggregation relation
aggregationOfEventConceptEndEvent :  Linkage EndEvent EventConcept
aggregationOfEventConceptEndEvent = make_Relation "EventConcept aggregation" "aggregated EventConcept"

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
membershipOfIntermediateEvent = make_upwardNestingRelation "intermediateEvent membership" "nested intermediateEvent"

-- Aggregation relation
aggregationOfEventConceptIntermediateEvent :  Linkage IntermediateEvent EventConcept
aggregationOfEventConceptIntermediateEvent = make_Relation "EventConcept aggregation" "aggregated EventConcept"

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
membershipOfStartEvent = make_upwardNestingRelation "startEvent membership" "nested startEvent"

-- Aggregation relation
aggregationOfEventConceptStartEvent :  Linkage StartEvent EventConcept
aggregationOfEventConceptStartEvent = make_Relation "EventConcept aggregation" "aggregated EventConcept"

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
membershipOfConceptRelationship = make_upwardNestingRelation "conceptRelationship membership" "nested conceptRelationship"

-- Aggregation relation
aggregationOfConceptualEntityConceptRelationship :  Linkage ConceptRelationship ConceptualEntity
aggregationOfConceptualEntityConceptRelationship = make_Relation "ConceptualEntity aggregation" "aggregated ConceptualEntity"

{- conceptRelationship : derived relation obtained by composing
   membershipOfConceptRelationship and aggregationOfConceptualEntityConceptRelationship
   It directly links an Conceptual Entity to the final aggregated ConceptualEntity
   hiding the reifying ConceptRelationship
-}
conceptRelationship : Linkage ConceptualEntity ConceptualEntity
conceptRelationship = membershipOfConceptRelationship  ∘  aggregationOfConceptualEntityConceptRelationship

postulate -- conceptRelationship is subTypeOf conceptualAssetRelationship
  st-f654f7e85ebb76fa-18eb202f5fdb706c  : conceptRelationship   ⊏⋆ᵣ  conceptualAssetRelationship 
postulate -- conceptRelationship is subTypeOf informationRelationship
  st-f654f7e85ebb76fa-dfa4e2305ebb4d2b  : conceptRelationship   ⊏⋆ᵣ  informationRelationship 


{- Concept Attribute: 
Immutable characteristics of a Conceptual Entity.The default cardinality is [0..1] which means that Concept Property optional.
-}
-- Aggregate Member : Concept Attribute
ConceptAttribute : ClassOfClassOfIndividual
ConceptAttribute = ClassOfIndividual

-- Membership relation
membershipOfConceptAttribute :  Linkage ConceptualEntity ConceptAttribute
membershipOfConceptAttribute = make_upwardNestingRelation "conceptAttribute membership" "nested conceptAttribute"

-- Aggregation relation
aggregationOfConceptPropertyConceptAttribute :  Linkage ConceptAttribute ConceptProperty
aggregationOfConceptPropertyConceptAttribute = make_Relation "ConceptProperty aggregation" "aggregated ConceptProperty"

{- conceptAttribute : derived relation obtained by composing
   membershipOfConceptAttribute and aggregationOfConceptPropertyConceptAttribute
   It directly links an Conceptual Entity to the final aggregated ConceptProperty
   hiding the reifying ConceptAttribute
-}
conceptAttribute : Linkage ConceptualEntity ConceptProperty
conceptAttribute = membershipOfConceptAttribute  ∘  aggregationOfConceptPropertyConceptAttribute


