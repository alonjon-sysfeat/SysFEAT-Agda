{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Asset: 
Resource Operating Assets comprise all resources which contributes to the production and consumption of Business Outcome Events of the enterprise.Resource Operating Assets are subject to Operational Risks.
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

postulate --  ResourceOperatingAsset is subTypeOf OperatingAssetType
  st-f8e61dd7621db856 : ResourceOperatingAsset ⊏ₑ OperatingAssetType

postulate --  ResourceOperatingAsset is subTypeOf ResourceFunctionalAsset
  st-9beca2b166fb119c : ResourceOperatingAsset ⊏ₑ ResourceFunctionalAsset

-- == Relationships =======================

{- Specialized Resource Operating Asset: -}
specializedResourceOperatingAsset :  Linkage ResourceOperatingAsset ResourceOperatingAsset
specializedResourceOperatingAsset = make_subTypeOf "Specialized Resource Operating Asset" "specializedResourceOperatingAsset"

postulate -- specializedResourceOperatingAsset is subTypeOf specializedOperatingAsset
  st-82a9879766ec3a29-6a70772167873276  : specializedResourceOperatingAsset   ⊏⋆ᵣ  specializedOperatingAsset 

{- Realized Business Operating Asset: -}
realizedBusinessOperatingAsset :  Linkage ResourceOperatingAsset ResourceOperatingAsset
realizedBusinessOperatingAsset = make_subTypeOf "Realized Business Operating Asset" "realizedBusinessOperatingAsset"


{- Fulfilled Resource Capability: 
Resource Capability(ies) fulfilled by a Resource Operating Asset.
-}
fulfilledResourceCapability :  Linkage ResourceOperatingAsset ResourceCapability
fulfilledResourceCapability = make_subTypeOf "Fulfilled Resource Capability" "fulfilledResourceCapability"

postulate -- fulfilledResourceCapability is subTypeOf fulfilledCapability
  st-dd265468689f5a22-190c72c368966198  : fulfilledResourceCapability   ⊏⋆ᵣ  fulfilledCapability 

{- Resource Rule Enforcement: -}
-- Aggregate Member : Resource Rule Enforcement
ResourceRuleEnforcement : ClassOfClassOfIndividual
ResourceRuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfResourceRuleEnforcement :  Linkage ResourceOperatingAsset ResourceRuleEnforcement
membershipOfResourceRuleEnforcement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceRuleResourceRuleEnforcement :  Linkage ResourceRuleEnforcement ResourceRule
aggregationOfResourceRuleResourceRuleEnforcement = aggregationOfBuildingBlock

{- resourceRuleEnforcement : derived relation obtained by composing
   membershipOfResourceRuleEnforcement and aggregationOfResourceRuleResourceRuleEnforcement
   It directly links an Resource Operating Asset to the final aggregated ResourceRule
   hiding the reifying ResourceRuleEnforcement
-}
resourceRuleEnforcement : Linkage ResourceOperatingAsset ResourceRule
resourceRuleEnforcement = membershipOfResourceRuleEnforcement  ∘  aggregationOfResourceRuleResourceRuleEnforcement

{- Resource Operating Asset Part: -}
-- Aggregate Member : Resource Operating Asset Part
ResourceOperatingAssetPart : ClassOfClassOfIndividual
ResourceOperatingAssetPart = ClassOfIndividual

-- Membership relation
membershipOfResourceOperatingAssetPart :  Linkage ResourceOperatingAsset ResourceOperatingAssetPart
membershipOfResourceOperatingAssetPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceOperatingAssetResourceOperatingAssetPart :  Linkage ResourceOperatingAssetPart ResourceOperatingAsset
aggregationOfResourceOperatingAssetResourceOperatingAssetPart = aggregationOfBuildingBlock

{- resourceOperatingAssetPart : derived relation obtained by composing
   membershipOfResourceOperatingAssetPart and aggregationOfResourceOperatingAssetResourceOperatingAssetPart
   It directly links an Resource Operating Asset to the final aggregated ResourceOperatingAsset
   hiding the reifying ResourceOperatingAssetPart
-}
resourceOperatingAssetPart : Linkage ResourceOperatingAsset ResourceOperatingAsset
resourceOperatingAssetPart = membershipOfResourceOperatingAssetPart  ∘  aggregationOfResourceOperatingAssetResourceOperatingAssetPart
