{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Operating Asset: 
An Individual Operating Asset is a Functional Asset that describes the way Outcomes are produced and consumed: how (Individual Processes) and by whom (Individual Agents).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.9f61cf9166833fb7 where -- ========== Individual Operating Asset

open import Agda.Primitive
open import SysFEAT.SOF.0eb95f356855bf94 public -- Asset Block
open import SysFEAT.SOF.ebcfaeac5ad76ed7 public -- Individual Asset
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual
open import SysFEAT.SOF.515c13db68953887 public -- Capability

IndividualOperatingAsset : ClassOfBoundedIndividual
IndividualOperatingAsset = BoundedIndividual

--  IndividualOperatingAsset withAspect AssetBlock
st-3b1b7e0568cd6e7d : IndividualOperatingAsset ⊏ₐₑ (AssetBlock lzero)
st-3b1b7e0568cd6e7d = polySubTypeOf-identity

--  IndividualOperatingAsset is subTypeOf IndividualAsset
st-a44f93a06748a9d5 : IndividualOperatingAsset ⊏ₑ IndividualAsset
st-a44f93a06748a9d5 = polySubTypeOf-identity

--  IndividualOperatingAsset is subTypeOf BoundedIndividual
st-be75bef768d23a89 : IndividualOperatingAsset ⊏ₑ BoundedIndividual
st-be75bef768d23a89 = polySubTypeOf-identity

-- == Relationships =======================

{- Exhibited Capability: 
Set of Capabilitys that an Individual Individual Operating Asset exhibits.
-}
exhibitedCapability :  Linkage IndividualOperatingAsset Capability
exhibitedCapability = make_instanceOf "Exhibited Capability" "exhibitedCapability"

postulate -- exhibitedCapability is subTypeOf propertyOfIndividual
  st-e44104b768d586bb-19763dbb68926a48  : exhibitedCapability   ⊏⋆ᵣ  propertyOfIndividual 

{- Individual Operating Part: 
An Individual Operating Part is the Aggregate Holonymy of an Individual Operating Asset within a parent Individual Operating Asset.
-}
-- Aggregate Member : Individual Operating Part
IndividualOperatingPart : ClassOfOrderedEntity (lsuc(lzero))
IndividualOperatingPart = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfIndividualOperatingPart :  Linkage IndividualOperatingAsset IndividualOperatingPart
membershipOfIndividualOperatingPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualOperatingAssetIndividualOperatingPart :  Linkage IndividualOperatingPart IndividualOperatingAsset
aggregationOfIndividualOperatingAssetIndividualOperatingPart = aggregationOfBuildingBlock

{- individualOperatingPart : derived relation obtained by composing
   membershipOfIndividualOperatingPart and aggregationOfIndividualOperatingAssetIndividualOperatingPart
   It directly links an Individual Operating Asset to the final aggregated IndividualOperatingAsset
   hiding the reifying IndividualOperatingPart
-}
individualOperatingPart : Linkage IndividualOperatingAsset IndividualOperatingAsset
individualOperatingPart = membershipOfIndividualOperatingPart  ∘  aggregationOfIndividualOperatingAssetIndividualOperatingPart
