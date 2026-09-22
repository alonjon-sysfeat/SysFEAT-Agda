{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Operating Asset: 
A Conceptual Operating Asset is an Operating Asset Type  used to describe the Conceptual Operating Model of the enterprise.It includes Value Streams, Operating Domains and Business Functions and the way they contribute to the delivery of Business Outcome Events.

Documentation : https://framework.sysfeat.com/pages/c8b2238961e5385a.htm

External references:
  OMG - UAF - OperationalAsset: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#operationalasset
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
st-c8b2238961e5385a-a371a43b5b865817 : ConceptualOperatingAsset ⊏ₑ OperatingAssetType
st-c8b2238961e5385a-a371a43b5b865817 = polySubTypeOf-identity

--  ConceptualOperatingAsset is subTypeOf ConceptualFunctionalAsset
st-c8b2238961e5385a-cb94ec53681855c2 : ConceptualOperatingAsset ⊏ₑ ConceptualFunctionalAsset
st-c8b2238961e5385a-cb94ec53681855c2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Conceptual Asset: -}
specializedConceptualAsset :  Linkage ConceptualOperatingAsset ConceptualOperatingAsset
specializedConceptualAsset = make_subTypeOf "Specialized Conceptual Asset" "Specialized Conceptual Asset"

postulate -- specializedConceptualAsset is subTypeOf specializedOperatingAsset
  st-325a376066f34181-6a70772167873276  : specializedConceptualAsset  ⊏⋆ᵣ  specializedOperatingAsset

-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Business Capability: -}
fulfilledBusinessCapability :  Linkage ConceptualOperatingAsset BusinessCapability
fulfilledBusinessCapability = make_subTypeOf "Fulfilled Business Capability" "Fulfilled Business Capability"

postulate -- fulfilledBusinessCapability is subTypeOf fulfilledCapability
  st-dd26906b68a0829d-190c72c368966198  : fulfilledBusinessCapability  ⊏⋆ᵣ  fulfilledCapability

-- -------------------------------------------------------------------------------------------- 
{- Conceptual Rule Enforcement: -}
-- Aggregate Member : Conceptual Rule Enforcement
ConceptualRuleEnforcement : ClassOfClassOfAbstractEntity
ConceptualRuleEnforcement = ClassOfAbstractEntity



--  ConceptualRuleEnforcement is subTypeOf RuleEnforcement
st-dd269a7268a09ad9-7bc2d4c26897a1c4 : ConceptualRuleEnforcement ⊏ₑ RuleEnforcement
st-dd269a7268a09ad9-7bc2d4c26897a1c4 = polySubTypeOf-identity

-- Membership relation
membershipOfConceptualRuleEnforcement :  Linkage ConceptualOperatingAsset ConceptualRuleEnforcement
membershipOfConceptualRuleEnforcement = make_upwardNestingRelation "conceptualRuleEnforcement membership" "nested conceptualRuleEnforcement"

-- Aggregation relation
aggregationOfConceptualBusinessRuleConceptualRuleEnforcement :  Linkage ConceptualRuleEnforcement ConceptualBusinessRule
aggregationOfConceptualBusinessRuleConceptualRuleEnforcement = make_Relation "ConceptualBusinessRule aggregation" "aggregated ConceptualBusinessRule"

{- conceptualRuleEnforcement : derived relation obtained by composing
   membershipOfConceptualRuleEnforcement and aggregationOfConceptualBusinessRuleConceptualRuleEnforcement
   It directly links an Conceptual Operating Asset to the final aggregated ConceptualBusinessRule
   hiding the reifying ConceptualRuleEnforcement
-}
conceptualRuleEnforcement : Linkage ConceptualOperatingAsset ConceptualBusinessRule
conceptualRuleEnforcement = membershipOfConceptualRuleEnforcement  ∘  aggregationOfConceptualBusinessRuleConceptualRuleEnforcement


