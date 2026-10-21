{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept: 
A Concept is the representation of any tangible or intanglible entity that is of interest to understand the enterprise, its data, resources and activities.A Concept is defined through its essential characteristics which can be:1) A Concept Property that represents some an immutable factual characteristic such as  name ,  amount .2) A Concept Relationship that represents relationships to other Concepts.

Documentation : https://framework.sysfeat.com/pages/362fc4365b3c39b8.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
  OMG - UAF - OperationalInformation: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalInformation
  OpenGroup - TOGAF - Enterprise Metamodel - Business Information: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
  Russell Ackoff - Choice & Communication - Concept: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Concept
  ISO 15926 - ClassOfInformationObject: https://15926.blog/topics/data-model/index.htm#ClassOfInformationObject
  OMG - SBVR - Concept: https://www.omg.org/spec/SBVR/1.5/PDF#page=38
  OpenGroup -ArchiMate - Business-Object: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Object
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.362fc4365b3c39b8 where -- ========== Concept

open import Agda.Primitive
open import SysFEAT.EA.229b34eb5b3f79d2 public -- Conceptual Entity
open import SysFEAT.EA.c39701c75747a173 public -- Concept Type

Concept : ClassOfClassOfBoundedIndividual
Concept = ClassOfBoundedIndividual


--  Concept is subTypeOf ConceptualEntity
st-362fc4365b3c39b8-229b34eb5b3f79d2 : Concept ⊏ₑ ConceptualEntity
st-362fc4365b3c39b8-229b34eb5b3f79d2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Power Type: -}
powerType :  Linkage Concept ConceptType
powerType = make_classOfHolonymy "Power Type" "Power Type"


-- -------------------------------------------------------------------------------------------- 
{- Instance of: -}
instanceOf :  Linkage Concept ConceptType
instanceOf = make_classOfHolonymy "Instance of" "Instance of"


-- -------------------------------------------------------------------------------------------- 
{- Specialized Concept: -}
specializedConcept :  Linkage Concept Concept
specializedConcept = make_subTypeOf "Specialized Concept" "Specialized Concept"

postulate -- specializedConcept is subTypeOf specializedBusinessObject
  st-325a37b066f34849-325a375966f33f85  : specializedConcept  ⊏⋆ᵣ  specializedBusinessObject
postulate -- specializedConcept is subTypeOf specializedBusinessConcept
  st-325a37b066f34849-325a344766f33adf  : specializedConcept  ⊏⋆ᵣ  specializedBusinessConcept
