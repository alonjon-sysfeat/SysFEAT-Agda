{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Operating Asset: 
A Conceptual Operating Asset is an Operating Asset Type  used to describe the Conceptual Operating Model of the enterprise.It includes Value Streams, Operating Domains and Business Functions and the way they contribute to the delivery of Business Outcome Events.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c8b2238961e5385a where -- ========== Conceptual Operating Asset

open import Agda.Primitive
open import SysFEAT.SOF.a371a43b5b865817 public -- Operating Asset Type
open import SysFEAT.EA.cb94ec53681855c2 public -- Conceptual Functional Asset
open import SysFEAT.EA.dd268f2868a08150 public -- Business Capability
open import SysFEAT.EA.dd269a5468a09a74 public -- Conceptual Business Rule

ConceptualOperatingAsset : ClassOfClassOfBoundedIndividual
ConceptualOperatingAsset = ClassOfBoundedIndividual

--  ConceptualOperatingAsset is subTypeOf OperatingAssetType
st-63828a6167e23c77 : ConceptualOperatingAsset ⊏ₑ OperatingAssetType
st-63828a6167e23c77 = polySubTypeOf-identity

--  ConceptualOperatingAsset is subTypeOf ConceptualFunctionalAsset
st-cb94ef5c68185b3c : ConceptualOperatingAsset ⊏ₑ ConceptualFunctionalAsset
st-cb94ef5c68185b3c = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Conceptual Asset: -}
specializedConceptualAsset :  Linkage ConceptualOperatingAsset ConceptualOperatingAsset
specializedConceptualAsset = make_subTypeOf "Specialized Conceptual Asset" "specializedConceptualAsset"

postulate -- specializedConceptualAsset is subTypeOf specializedOperatingAsset
  st-325a376066f34181-6a70772167873276  : specializedConceptualAsset   ⊏⋆ᵣ  specializedOperatingAsset 

{- Fulfilled Business Capability: -}
fulfilledBusinessCapability :  Linkage ConceptualOperatingAsset BusinessCapability
fulfilledBusinessCapability = make_subTypeOf "Fulfilled Business Capability" "fulfilledBusinessCapability"

postulate -- fulfilledBusinessCapability is subTypeOf fulfilledCapability
  st-dd26906b68a0829d-190c72c368966198  : fulfilledBusinessCapability   ⊏⋆ᵣ  fulfilledCapability 

{- Conceptual Rule Enforcement: -}
-- Aggregate Member : Conceptual Rule Enforcement
ConceptualRuleEnforcement : ClassOfClassOfIndividual
ConceptualRuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfConceptualRuleEnforcement :  Linkage ConceptualOperatingAsset ConceptualRuleEnforcement
membershipOfConceptualRuleEnforcement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualBusinessRuleConceptualRuleEnforcement :  Linkage ConceptualRuleEnforcement ConceptualBusinessRule
aggregationOfConceptualBusinessRuleConceptualRuleEnforcement = aggregationOfBuildingBlock

{- conceptualRuleEnforcement : derived relation obtained by composing
   membershipOfConceptualRuleEnforcement and aggregationOfConceptualBusinessRuleConceptualRuleEnforcement
   It directly links an Conceptual Operating Asset to the final aggregated ConceptualBusinessRule
   hiding the reifying ConceptualRuleEnforcement
-}
conceptualRuleEnforcement : Linkage ConceptualOperatingAsset ConceptualBusinessRule
conceptualRuleEnforcement = membershipOfConceptualRuleEnforcement  ∘  aggregationOfConceptualBusinessRuleConceptualRuleEnforcement
