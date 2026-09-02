{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Type: 
A Concept Type is a class of concepts which have Concepts as instances: Concept Types classify Concepts.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c39701c75747a173 where -- ========== Concept Type

open import Agda.Primitive
open import SysFEAT.SOF.d6cd2cea5ab98e5f public -- Information Entity
open import SysFEAT.EA.267b28fc66757618 public -- Class of Conceptual Entity
open import SysFEAT.EA.362fc4365b3c39b8 public -- Concept

ConceptType : ClassOfClassOfBoundedIndividual
ConceptType = ClassOfBoundedIndividual

--  ConceptType is subTypeOf InformationEntity
st-3a0e3bed63ce3320 : ConceptType ⊏ₑ InformationEntity
st-3a0e3bed63ce3320 = polySubTypeOf-identity

--  ConceptType is subTypeOf ClassOfConceptualEntity
st-5e4060eb5b528622 : ConceptType ⊏ₑ ClassOfConceptualEntity
st-5e4060eb5b528622 = polySubTypeOf-identity

-- == Relationships =======================

{- Power Component: -}
powerComponent :  Linkage ConceptType Concept
powerComponent = make_classOfHolonymy "Power Component" "powerComponent"


{- Concept Type Relationship: -}
-- Aggregate Member : Concept Type Relationship
ConceptTypeRelationship : ClassOfClassOfIndividual
ConceptTypeRelationship = ClassOfIndividual

-- Membership relation
membershipOfConceptTypeRelationship :  Linkage ConceptType ConceptTypeRelationship
membershipOfConceptTypeRelationship = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptTypeConceptTypeRelationship :  Linkage ConceptTypeRelationship ConceptType
aggregationOfConceptTypeConceptTypeRelationship = aggregationOfBuildingBlock

{- conceptTypeRelationship : derived relation obtained by composing
   membershipOfConceptTypeRelationship and aggregationOfConceptTypeConceptTypeRelationship
   It directly links an Concept Type to the final aggregated ConceptType
   hiding the reifying ConceptTypeRelationship
-}
conceptTypeRelationship : Linkage ConceptType ConceptType
conceptTypeRelationship = membershipOfConceptTypeRelationship  ∘  aggregationOfConceptTypeConceptTypeRelationship
