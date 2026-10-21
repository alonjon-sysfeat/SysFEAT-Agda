{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Type: 
A Concept Type is a class of concepts which have Concepts as instances: Concept Types classify Concepts.

Documentation : https://framework.sysfeat.com/pages/c39701c75747a173.htm

External references:
  Russell Ackoff - Choice & Communication - Concept: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Concept
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
st-c39701c75747a173-d6cd2cea5ab98e5f : ConceptType ⊏ₑ InformationEntity
st-c39701c75747a173-d6cd2cea5ab98e5f = polySubTypeOf-identity

--  ConceptType is subTypeOf ClassOfConceptualEntity
st-c39701c75747a173-267b28fc66757618 : ConceptType ⊏ₑ ClassOfConceptualEntity
st-c39701c75747a173-267b28fc66757618 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Power Component: -}
powerComponent :  Linkage ConceptType Concept
powerComponent = make_classOfHolonymy "Power Component" "Power Component"


-- -------------------------------------------------------------------------------------------- 
{- Concept Type Relationship: -}
-- Aggregate Member : Concept Type Relationship
ConceptTypeRelationship : ClassOfClassOfBoundedIndividual
ConceptTypeRelationship = ClassOfBoundedIndividual



--  ConceptTypeRelationship is subTypeOf ConceptualAssetRelationship
st-e8bff3315ebb87aa-18eb202f5fdb706c : ConceptTypeRelationship ⊏ₑ ConceptualAssetRelationship
st-e8bff3315ebb87aa-18eb202f5fdb706c = polySubTypeOf-identity

--  ConceptTypeRelationship is subTypeOf InformationRelationship
st-e8bff3315ebb87aa-dfa4e2305ebb4d2b : ConceptTypeRelationship ⊏ₑ InformationRelationship
st-e8bff3315ebb87aa-dfa4e2305ebb4d2b = polySubTypeOf-identity

--  ConceptTypeRelationship is subTypeOf ConceptType
st-e8bff3315ebb87aa-c39701c75747a173 : ConceptTypeRelationship ⊏ₑ ConceptType
st-e8bff3315ebb87aa-c39701c75747a173 = polySubTypeOf-identity

-- Membership relation
membershipOfConceptTypeRelationship :  Linkage ConceptType ConceptTypeRelationship
membershipOfConceptTypeRelationship = make_upwardNestingRelation "conceptTypeRelationship membership" "nested conceptTypeRelationship"

-- Aggregation relation
aggregationOfConceptTypeConceptTypeRelationship :  Linkage ConceptTypeRelationship ConceptType
aggregationOfConceptTypeConceptTypeRelationship = make_Relation "ConceptType aggregation" "aggregated ConceptType"

{- conceptTypeRelationship : derived relation obtained by composing
   membershipOfConceptTypeRelationship and aggregationOfConceptTypeConceptTypeRelationship
   It directly links an Concept Type to the final aggregated ConceptType
   hiding the reifying ConceptTypeRelationship
-}
conceptTypeRelationship : Linkage ConceptType ConceptType
conceptTypeRelationship = membershipOfConceptTypeRelationship  ∘  aggregationOfConceptTypeConceptTypeRelationship


