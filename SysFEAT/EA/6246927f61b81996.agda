{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business System Asset: 
A Business System Asset is man made resource that is a means to achieve Business Outcome Events.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6246927f61b81996 where -- ========== Business System Asset

open import Agda.Primitive
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset
open import SysFEAT.EA.df7ce6c363682f79 public -- Requirement
open import SysFEAT.EA.dd26aa0568a1f939 public -- Functionality
open import SysFEAT.EA.23bf9a5368ad2bdd public -- System Rule

BusinessSystemAsset : ClassOfClassOfBoundedIndividual
BusinessSystemAsset = ClassOfBoundedIndividual

--  BusinessSystemAsset is subTypeOf BusinessOperatingAsset
st-6246928861b819ee : BusinessSystemAsset ⊏ₑ BusinessOperatingAsset
st-6246928861b819ee = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business System Asset: -}
specializedBusinessSystemAsset :  Linkage BusinessSystemAsset BusinessSystemAsset
specializedBusinessSystemAsset = make_subTypeOf "Specialized Business System Asset" "specializedBusinessSystemAsset"

postulate -- specializedBusinessSystemAsset is subTypeOf specializedResourceAsset
  st-325a37b966f34e1e-325a380e66f351f6  : specializedBusinessSystemAsset   ⊏⋆ᵣ  specializedResourceAsset 

{- Fulfilled Requirement: -}
fulfilledRequirement :  Linkage BusinessSystemAsset Requirement
fulfilledRequirement = make_subTypeOf "Fulfilled Requirement" "fulfilledRequirement"


{- Fulfilled Functionality: -}
fulfilledFunctionality :  Linkage BusinessSystemAsset Functionality
fulfilledFunctionality = make_subTypeOf "Fulfilled Functionality" "fulfilledFunctionality"

postulate -- fulfilledFunctionality is subTypeOf fulfilledBusinessResourceCapability
  st-dd26ab3968a1fa4a-dd2681a968a1b9d1  : fulfilledFunctionality   ⊏⋆ᵣ  fulfilledBusinessResourceCapability 

{- System Rule Enforcement: -}
-- Aggregate Member : System Rule Enforcement
SystemRuleEnforcement : ClassOfClassOfIndividual
SystemRuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfSystemRuleEnforcement :  Linkage BusinessSystemAsset SystemRuleEnforcement
membershipOfSystemRuleEnforcement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSystemRuleSystemRuleEnforcement :  Linkage SystemRuleEnforcement SystemRule
aggregationOfSystemRuleSystemRuleEnforcement = aggregationOfBuildingBlock

{- systemRuleEnforcement : derived relation obtained by composing
   membershipOfSystemRuleEnforcement and aggregationOfSystemRuleSystemRuleEnforcement
   It directly links an Business System Asset to the final aggregated SystemRule
   hiding the reifying SystemRuleEnforcement
-}
systemRuleEnforcement : Linkage BusinessSystemAsset SystemRule
systemRuleEnforcement = membershipOfSystemRuleEnforcement  ∘  aggregationOfSystemRuleSystemRuleEnforcement

{- Business System Asset Part: -}
-- Aggregate Member : Business System Asset Part
BusinessSystemAssetPart : ClassOfClassOfIndividual
BusinessSystemAssetPart = ClassOfIndividual

-- Membership relation
membershipOfBusinessSystemAssetPart :  Linkage BusinessSystemAsset BusinessSystemAssetPart
membershipOfBusinessSystemAssetPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemAssetBusinessSystemAssetPart :  Linkage BusinessSystemAssetPart BusinessSystemAsset
aggregationOfBusinessSystemAssetBusinessSystemAssetPart = aggregationOfBuildingBlock

{- businessSystemAssetPart : derived relation obtained by composing
   membershipOfBusinessSystemAssetPart and aggregationOfBusinessSystemAssetBusinessSystemAssetPart
   It directly links an Business System Asset to the final aggregated BusinessSystemAsset
   hiding the reifying BusinessSystemAssetPart
-}
businessSystemAssetPart : Linkage BusinessSystemAsset BusinessSystemAsset
businessSystemAssetPart = membershipOfBusinessSystemAssetPart  ∘  aggregationOfBusinessSystemAssetBusinessSystemAssetPart
