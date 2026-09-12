{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept: 
A Concept is the representation of any tangible or intanglible entity that is of interest to understand the enterprise, its data, resources and activities.A Concept is defined through its essential characteristics which can be:1) A Concept Property that represents some an immutable factual characteristic such as  name ,  amount .2) A Concept Relationship that represents relationships to other Concepts.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.362fc4365b3c39b8 where -- ========== Concept

open import Agda.Primitive
open import SysFEAT.EA.229b34eb5b3f79d2 public -- Conceptual Entity
open import SysFEAT.EA.c39701c75747a173 public -- Concept Type

Concept : ClassOfClassOfBoundedIndividual
Concept = ClassOfBoundedIndividual

--  Concept is subTypeOf ConceptualEntity
st-e8bff42d5ebb8a32 : Concept ⊏ₑ ConceptualEntity
st-e8bff42d5ebb8a32 = polySubTypeOf-identity

-- == Relationships =======================

{- Power Type: -}
powerType :  Linkage Concept ConceptType
powerType = make_classOfHolonymy "Power Type" "powerType"


{- Instance of: -}
instanceOf :  Linkage Concept ConceptType
instanceOf = make_classOfHolonymy "Instance of" "instanceOf"


{- Specialized Concept: -}
specializedConcept :  Linkage Concept Concept
specializedConcept = make_subTypeOf "Specialized Concept" "specializedConcept"

postulate -- specializedConcept is subTypeOf specializedBusinessObject
  st-325a37b066f34849-325a375966f33f85  : specializedConcept   ⊏⋆ᵣ  specializedBusinessObject 
postulate -- specializedConcept is subTypeOf specializedBusinessConcept
  st-325a37b066f34849-325a344766f33adf  : specializedConcept   ⊏⋆ᵣ  specializedBusinessConcept 
