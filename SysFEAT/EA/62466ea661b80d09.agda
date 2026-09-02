{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Operating Asset: 
Business Operating Assets comprise physical assets which contribute to the production and consumption of Business Outcome Events of the enterprise. This includes Business Agent Types, their behaviors (Business Behavior:  Business Resource Process, Business Resource Interaction Process),
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.62466ea661b80d09 where -- ========== Business Operating Asset

open import Agda.Primitive
open import SysFEAT.EA.6a70b9f6678763db public -- Business Asset
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset
open import SysFEAT.EA.c8b2238961e5385a public -- Conceptual Operating Asset
open import SysFEAT.EA.82a9892166ec3b89 public -- Process Family
open import SysFEAT.EA.dd26288968a05d00 public -- Business Resource Capability
open import SysFEAT.EA.dd268f2868a08150 public -- Business Capability

BusinessOperatingAsset : ClassOfClassOfBoundedIndividual
BusinessOperatingAsset = ClassOfBoundedIndividual

--  BusinessOperatingAsset is subTypeOf BusinessAsset
st-6a708e7267874894 : BusinessOperatingAsset ⊏ₑ BusinessAsset
st-6a708e7267874894 = polySubTypeOf-identity

--  BusinessOperatingAsset is subTypeOf ResourceOperatingAsset
st-0185d0c76221c10e : BusinessOperatingAsset ⊏ₑ ResourceOperatingAsset
st-0185d0c76221c10e = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Resource Asset: -}
specializedResourceAsset :  Linkage BusinessOperatingAsset BusinessOperatingAsset
specializedResourceAsset = make_subTypeOf "Specialized Resource Asset" "specializedResourceAsset"

postulate -- specializedResourceAsset is subTypeOf specializedResourceOperatingAsset
  st-325a380e66f351f6-82a9879766ec3a29  : specializedResourceAsset   ⊏⋆ᵣ  specializedResourceOperatingAsset 

{- Realized Logical Operating Asset: -}
realizedLogicalOperatingAsset :  Linkage BusinessOperatingAsset ConceptualOperatingAsset
realizedLogicalOperatingAsset = make_subTypeOf "Realized Logical Operating Asset" "realizedLogicalOperatingAsset"

postulate -- realizedLogicalOperatingAsset is subTypeOf realizedBusinessOperatingAsset
  st-332c47ab66f17a2e-82a9888a66ec3ad6  : realizedLogicalOperatingAsset   ⊏⋆ᵣ  realizedBusinessOperatingAsset 

{- Process Family: 
Classification of Business Operating Asset a by a Process Family.
-}
processFamily :  Linkage BusinessOperatingAsset ProcessFamily
processFamily = make_instanceOf "Process Family" "processFamily"

postulate -- processFamily is subTypeOf categoryOfArchitectureBlock
  st-82a9894466ec3bc6-f69620606a0f9c94  : processFamily   ⊏⋆ᵣ  categoryOfArchitectureBlock  {lsuc(lsuc(lzero))}

{- Fulfilled Business Resource Capability: -}
fulfilledBusinessResourceCapability :  Linkage BusinessOperatingAsset BusinessResourceCapability
fulfilledBusinessResourceCapability = make_subTypeOf "Fulfilled Business Resource Capability" "fulfilledBusinessResourceCapability"

postulate -- fulfilledBusinessResourceCapability is subTypeOf fulfilledResourceCapability
  st-dd2681a968a1b9d1-dd265468689f5a22  : fulfilledBusinessResourceCapability   ⊏⋆ᵣ  fulfilledResourceCapability 

{- Fulfilled Business Capability: -}
fulfilledBusinessCapability :  Linkage BusinessOperatingAsset BusinessCapability
fulfilledBusinessCapability = make_subTypeOf "Fulfilled Business Capability" "fulfilledBusinessCapability"

postulate -- fulfilledBusinessCapability is subTypeOf fulfilledCapability
  st-dd26824268a1ba99-190c72c368966198  : fulfilledBusinessCapability   ⊏⋆ᵣ  fulfilledCapability 

{- Business Operating Asset Part: -}
-- Aggregate Member : Business Operating Asset Part
BusinessOperatingAssetPart : ClassOfClassOfIndividual
BusinessOperatingAssetPart = ClassOfIndividual

-- Membership relation
membershipOfBusinessOperatingAssetPart :  Linkage BusinessOperatingAsset BusinessOperatingAssetPart
membershipOfBusinessOperatingAssetPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart :  Linkage BusinessOperatingAssetPart BusinessOperatingAsset
aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart = aggregationOfBuildingBlock

{- businessOperatingAssetPart : derived relation obtained by composing
   membershipOfBusinessOperatingAssetPart and aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart
   It directly links an Business Operating Asset to the final aggregated BusinessOperatingAsset
   hiding the reifying BusinessOperatingAssetPart
-}
businessOperatingAssetPart : Linkage BusinessOperatingAsset BusinessOperatingAsset
businessOperatingAssetPart = membershipOfBusinessOperatingAssetPart  ∘  aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart
