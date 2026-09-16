{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Operating Asset: 
Business Operating Assets comprise physical assets which contribute to the production and consumption of Business Outcome Events of the enterprise. This includes Business Agent Types, their behaviors (Business Behavior:  Business Resource Process, Business Resource Interaction Process),

Documentation : https://framework.sysfeat.com/pages/62466ea661b80d09.htm

External references:
  OpenGroup - TOGAF - Guide - Solution Building Blocks: https://pubs.opengroup.org/togaf-standard/architecture-content/chap05.html#tag_05_02_04
  OpenGroup - TOGAF - Definition - Solution Building Block: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_73
  OMG - UAF - CapableElement: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#CapableElement
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
st-62466ea661b80d09-6a70b9f6678763db : BusinessOperatingAsset ⊏ₑ BusinessAsset
st-62466ea661b80d09-6a70b9f6678763db = polySubTypeOf-identity

--  BusinessOperatingAsset is subTypeOf ResourceOperatingAsset
st-62466ea661b80d09-f8e61da0621db6fa : BusinessOperatingAsset ⊏ₑ ResourceOperatingAsset
st-62466ea661b80d09-f8e61da0621db6fa = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Resource Asset: -}
specializedResourceAsset :  Linkage BusinessOperatingAsset BusinessOperatingAsset
specializedResourceAsset = make_subTypeOf "Specialized Resource Asset" "Specialized Resource Asset"

postulate -- specializedResourceAsset is subTypeOf specializedResourceOperatingAsset
  st-325a380e66f351f6-82a9879766ec3a29  : specializedResourceAsset   ⊏⋆ᵣ  specializedResourceOperatingAsset 

{- Realized Logical Operating Asset: -}
realizedLogicalOperatingAsset :  Linkage BusinessOperatingAsset ConceptualOperatingAsset
realizedLogicalOperatingAsset = make_subTypeOf "Realized Logical Operating Asset" "Realized Logical Operating Asset"

postulate -- realizedLogicalOperatingAsset is subTypeOf realizedBusinessOperatingAsset
  st-332c47ab66f17a2e-82a9888a66ec3ad6  : realizedLogicalOperatingAsset   ⊏⋆ᵣ  realizedBusinessOperatingAsset 

{- Process Family: 
Classification of Business Operating Asset a by a Process Family.
-}
processFamily :  Linkage BusinessOperatingAsset ProcessFamily
processFamily = make_instanceOf "Process Family" "Process Family"

postulate -- processFamily is subTypeOf categoryOfArchitectureBlock
  st-82a9894466ec3bc6-f69620606a0f9c94  : processFamily   ⊏⋆ᵣ  categoryOfArchitectureBlock  {lsuc(lsuc(lzero))}

{- Fulfilled Business Resource Capability: -}
fulfilledBusinessResourceCapability :  Linkage BusinessOperatingAsset BusinessResourceCapability
fulfilledBusinessResourceCapability = make_subTypeOf "Fulfilled Business Resource Capability" "Fulfilled Business Resource Capability"

postulate -- fulfilledBusinessResourceCapability is subTypeOf fulfilledResourceCapability
  st-dd2681a968a1b9d1-dd265468689f5a22  : fulfilledBusinessResourceCapability   ⊏⋆ᵣ  fulfilledResourceCapability 

{- Fulfilled Business Capability: -}
fulfilledBusinessCapability :  Linkage BusinessOperatingAsset BusinessCapability
fulfilledBusinessCapability = make_subTypeOf "Fulfilled Business Capability" "Fulfilled Business Capability"

postulate -- fulfilledBusinessCapability is subTypeOf fulfilledCapability
  st-dd26824268a1ba99-190c72c368966198  : fulfilledBusinessCapability   ⊏⋆ᵣ  fulfilledCapability 

{- Business Operating Asset Part: -}
-- Aggregate Member : Business Operating Asset Part
BusinessOperatingAssetPart : ClassOfClassOfIndividual
BusinessOperatingAssetPart = ClassOfIndividual

-- Membership relation
membershipOfBusinessOperatingAssetPart :  Linkage BusinessOperatingAsset BusinessOperatingAssetPart
membershipOfBusinessOperatingAssetPart = make_upwardNestingRelation "businessOperatingAssetPart membership" "nested businessOperatingAssetPart"

-- Aggregation relation
aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart :  Linkage BusinessOperatingAssetPart BusinessOperatingAsset
aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart = make_Relation "BusinessOperatingAsset aggregation" "aggregated BusinessOperatingAsset"

{- businessOperatingAssetPart : derived relation obtained by composing
   membershipOfBusinessOperatingAssetPart and aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart
   It directly links an Business Operating Asset to the final aggregated BusinessOperatingAsset
   hiding the reifying BusinessOperatingAssetPart
-}
businessOperatingAssetPart : Linkage BusinessOperatingAsset BusinessOperatingAsset
businessOperatingAssetPart = membershipOfBusinessOperatingAssetPart  ∘  aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart

postulate -- businessOperatingAssetPart is subTypeOf resourceOperatingAssetPart
  st-b777c10368b071b8-b776bf0868b0fbb3  : businessOperatingAssetPart   ⊏⋆ᵣ  resourceOperatingAssetPart 

