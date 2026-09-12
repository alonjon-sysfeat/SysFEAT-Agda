{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Capability: 
A Business Capability is a conceptual Capability that benefits to Customers (internal or external) of the enterprise. It expresses an ability to produce Conceptual Outcome Events.A Business Capability is defined by its intended Enterprise Outcome Events and the conditions (Condition Property) under which the production of the Enterprise Outcome Events shall be proceeded.The actual Condition Scale Values for a given Business Capability at different stages of Enterprise Initiatives is given by their exhibition (Exhibited Capability).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd268f2868a08150 where -- ========== Business Capability

open import Agda.Primitive
open import SysFEAT.SOF.515c13db68953887 public -- Capability
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset

BusinessCapability : PropertyType
BusinessCapability = ClassOfProperty

--  BusinessCapability is subTypeOf Capability
st-e7a503ae679e17be : BusinessCapability ⊏ₑ Capability
st-e7a503ae679e17be = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Capability: -}
specializedBusinessCapability :  Linkage BusinessCapability BusinessCapability
specializedBusinessCapability = make_subTypeOf "Specialized Business Capability" "specializedBusinessCapability"

postulate -- specializedBusinessCapability is subTypeOf specializedCapability
  st-dd268fb668a081e6-01f11e77689b6b10  : specializedBusinessCapability   ⊏⋆ᵣ  specializedCapability 

{- Involved Conceptual Object: -}
-- Aggregate Member : Involved Conceptual Object
InvolvedConceptualObject : ClassOfClassOfIndividual
InvolvedConceptualObject = ClassOfIndividual

-- Membership relation
membershipOfInvolvedConceptualObject :  Linkage BusinessCapability InvolvedConceptualObject
membershipOfInvolvedConceptualObject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityAssetInvolvedConceptualObject :  Linkage InvolvedConceptualObject ConceptualEntityAsset
aggregationOfConceptualEntityAssetInvolvedConceptualObject = aggregationOfBuildingBlock

{- involvedConceptualObject : derived relation obtained by composing
   membershipOfInvolvedConceptualObject and aggregationOfConceptualEntityAssetInvolvedConceptualObject
   It directly links an Business Capability to the final aggregated ConceptualEntityAsset
   hiding the reifying InvolvedConceptualObject
-}
involvedConceptualObject : Linkage BusinessCapability ConceptualEntityAsset
involvedConceptualObject = membershipOfInvolvedConceptualObject  ∘  aggregationOfConceptualEntityAssetInvolvedConceptualObject
