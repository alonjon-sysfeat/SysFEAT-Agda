{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Operating Asset: 
An Individual Operating Asset is a Functional Asset that describes the way Outcomes are produced and consumed: how (Individual Processes) and by whom (Individual Agents).

Documentation : https://framework.sysfeat.com/pages/9f61cf9166833fb7.htm

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
st-9f61cf9166833fb7-0eb95f356855bf94 : IndividualOperatingAsset ⊏ₐₑ (AssetBlock lzero)
st-9f61cf9166833fb7-0eb95f356855bf94 = polySubTypeOf-identity

--  IndividualOperatingAsset is subTypeOf IndividualAsset
st-9f61cf9166833fb7-ebcfaeac5ad76ed7 : IndividualOperatingAsset ⊏ₑ IndividualAsset
st-9f61cf9166833fb7-ebcfaeac5ad76ed7 = polySubTypeOf-identity

--  IndividualOperatingAsset is subTypeOf BoundedIndividual
st-9f61cf9166833fb7-28f07b2354be0d69 : IndividualOperatingAsset ⊏ₑ BoundedIndividual
st-9f61cf9166833fb7-28f07b2354be0d69 = polySubTypeOf-identity

-- == Relationships =======================

{- Exhibited Capability: 
Set of Capabilitys that an Individual Individual Operating Asset exhibits.
-}
exhibitedCapability :  Linkage IndividualOperatingAsset Capability
exhibitedCapability = make_instanceOf "Exhibited Capability" "Exhibited Capability"

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
membershipOfIndividualOperatingPart = make_upwardNestingRelation "individualOperatingPart membership" "nested individualOperatingPart"

-- Aggregation relation
aggregationOfIndividualOperatingAssetIndividualOperatingPart :  Linkage IndividualOperatingPart IndividualOperatingAsset
aggregationOfIndividualOperatingAssetIndividualOperatingPart = make_Relation "IndividualOperatingAsset aggregation" "aggregated IndividualOperatingAsset"

{- individualOperatingPart : derived relation obtained by composing
   membershipOfIndividualOperatingPart and aggregationOfIndividualOperatingAssetIndividualOperatingPart
   It directly links an Individual Operating Asset to the final aggregated IndividualOperatingAsset
   hiding the reifying IndividualOperatingPart
-}
individualOperatingPart : Linkage IndividualOperatingAsset IndividualOperatingAsset
individualOperatingPart = membershipOfIndividualOperatingPart  ∘  aggregationOfIndividualOperatingAssetIndividualOperatingPart

postulate -- individualOperatingPart is subTypeOf aggregateHolonymy
  st-d8ee780d68d224c2-c2f2c9a166ea50e2  : individualOperatingPart   ⊏⋆ᵣ  aggregateHolonymy 

