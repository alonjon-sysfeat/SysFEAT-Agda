{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Asset: 
Resource Operating Assets comprise all resources which contributes to the production and consumption of Business Outcome Events of the enterprise.Resource Operating Assets are subject to Operational Risks.

Documentation : https://framework.sysfeat.com/pages/f8e61da0621db6fa.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f8e61da0621db6fa where -- ========== Resource Operating Asset

open import Agda.Primitive
open import SysFEAT.SOF.a371a43b5b865817 public -- Operating Asset Type
open import SysFEAT.EA.9bec9fbf66fb0d6f public -- Resource Functional Asset
open import SysFEAT.EA.dd265414689f5987 public -- Resource Capability
open import SysFEAT.EA.07b60b4168a50438 public -- Resource Rule

ResourceOperatingAsset : ClassOfClassOfBoundedIndividual
ResourceOperatingAsset = ClassOfBoundedIndividual


--  ResourceOperatingAsset is subTypeOf OperatingAssetType
st-f8e61da0621db6fa-a371a43b5b865817 : ResourceOperatingAsset ⊏ₑ OperatingAssetType
st-f8e61da0621db6fa-a371a43b5b865817 = polySubTypeOf-identity

--  ResourceOperatingAsset is subTypeOf ResourceFunctionalAsset
st-f8e61da0621db6fa-9bec9fbf66fb0d6f : ResourceOperatingAsset ⊏ₑ ResourceFunctionalAsset
st-f8e61da0621db6fa-9bec9fbf66fb0d6f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Resource Operating Asset: -}
specializedResourceOperatingAsset :  Linkage ResourceOperatingAsset ResourceOperatingAsset
specializedResourceOperatingAsset = make_subTypeOf "Specialized Resource Operating Asset" "Specialized Resource Operating Asset"

postulate -- specializedResourceOperatingAsset is subTypeOf specializedOperatingAsset
  st-82a9879766ec3a29-6a70772167873276  : specializedResourceOperatingAsset  ⊏⋆ᵣ  specializedOperatingAsset

-- -------------------------------------------------------------------------------------------- 
{- Realized Business Operating Asset: -}
realizedBusinessOperatingAsset :  Linkage ResourceOperatingAsset ResourceOperatingAsset
realizedBusinessOperatingAsset = make_subTypeOf "Realized Business Operating Asset" "Realized Business Operating Asset"


-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Resource Capability: 
Resource Capability(ies) fulfilled by a Resource Operating Asset.
-}
fulfilledResourceCapability :  Linkage ResourceOperatingAsset ResourceCapability
fulfilledResourceCapability = make_subTypeOf "Fulfilled Resource Capability" "Fulfilled Resource Capability"

postulate -- fulfilledResourceCapability is subTypeOf fulfilledCapability
  st-dd265468689f5a22-190c72c368966198  : fulfilledResourceCapability  ⊏⋆ᵣ  fulfilledCapability

-- -------------------------------------------------------------------------------------------- 
{- Resource Rule Enforcement: -}
-- Aggregate Member : Resource Rule Enforcement
ResourceRuleEnforcement : ClassOfClassOfAbstractEntity
ResourceRuleEnforcement = ClassOfAbstractEntity



--  ResourceRuleEnforcement is subTypeOf RuleEnforcement
st-07b60bd468a50731-7bc2d4c26897a1c4 : ResourceRuleEnforcement ⊏ₑ RuleEnforcement
st-07b60bd468a50731-7bc2d4c26897a1c4 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceRuleEnforcement :  Linkage ResourceOperatingAsset ResourceRuleEnforcement
membershipOfResourceRuleEnforcement = make_upwardNestingRelation "resourceRuleEnforcement membership" "nested resourceRuleEnforcement"

-- Aggregation relation
aggregationOfResourceRuleResourceRuleEnforcement :  Linkage ResourceRuleEnforcement ResourceRule
aggregationOfResourceRuleResourceRuleEnforcement = make_Relation "ResourceRule aggregation" "aggregated ResourceRule"

{- resourceRuleEnforcement : derived relation obtained by composing
   membershipOfResourceRuleEnforcement and aggregationOfResourceRuleResourceRuleEnforcement
   It directly links an Resource Operating Asset to the final aggregated ResourceRule
   hiding the reifying ResourceRuleEnforcement
-}
resourceRuleEnforcement : Linkage ResourceOperatingAsset ResourceRule
resourceRuleEnforcement = membershipOfResourceRuleEnforcement  ∘  aggregationOfResourceRuleResourceRuleEnforcement



-- -------------------------------------------------------------------------------------------- 
{- Resource Operating Asset Part: -}
-- Aggregate Member : Resource Operating Asset Part
ResourceOperatingAssetPart : ClassOfClassOfBoundedIndividual
ResourceOperatingAssetPart = ClassOfBoundedIndividual



--  ResourceOperatingAssetPart is subTypeOf OperatingAssetPart
st-b776bf0868b0fbb3-b776b8c668b04b35 : ResourceOperatingAssetPart ⊏ₑ OperatingAssetPart
st-b776bf0868b0fbb3-b776b8c668b04b35 = polySubTypeOf-identity

--  ResourceOperatingAssetPart is subTypeOf ResourceOperatingAsset
st-b776bf0868b0fbb3-f8e61da0621db6fa : ResourceOperatingAssetPart ⊏ₑ ResourceOperatingAsset
st-b776bf0868b0fbb3-f8e61da0621db6fa = polySubTypeOf-identity

-- Membership relation
membershipOfResourceOperatingAssetPart :  Linkage ResourceOperatingAsset ResourceOperatingAssetPart
membershipOfResourceOperatingAssetPart = make_upwardNestingRelation "resourceOperatingAssetPart membership" "nested resourceOperatingAssetPart"

-- Aggregation relation
aggregationOfResourceOperatingAssetResourceOperatingAssetPart :  Linkage ResourceOperatingAssetPart ResourceOperatingAsset
aggregationOfResourceOperatingAssetResourceOperatingAssetPart = make_Relation "ResourceOperatingAsset aggregation" "aggregated ResourceOperatingAsset"

{- resourceOperatingAssetPart : derived relation obtained by composing
   membershipOfResourceOperatingAssetPart and aggregationOfResourceOperatingAssetResourceOperatingAssetPart
   It directly links an Resource Operating Asset to the final aggregated ResourceOperatingAsset
   hiding the reifying ResourceOperatingAssetPart
-}
resourceOperatingAssetPart : Linkage ResourceOperatingAsset ResourceOperatingAsset
resourceOperatingAssetPart = membershipOfResourceOperatingAssetPart  ∘  aggregationOfResourceOperatingAssetResourceOperatingAssetPart


