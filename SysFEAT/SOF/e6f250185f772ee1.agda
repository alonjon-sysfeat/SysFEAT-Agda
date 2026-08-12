{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Asset: 
An Information Asset  represents anything that can be communicated or memorized by an Agent Type to produce and react to Outcome Events.An Information Asset is either an Information Entity or an Information Property.The difference lies in their relationship to change and to time. Information Entity(ies) can change over time and have a lifeycle while Information Propertys are immutable characteristics.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e6f250185f772ee1 where -- ========== Information Asset

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type
open import SysFEAT.SOF.6c5f80e468587f06 public -- Information Block
open import SysFEAT.SOF.4356520b6a110f68 public -- Data Category
open import SysFEAT.SOF.582e785466f6b36f public -- Data Risk Type

InformationAsset : ClassOfClassOfBoundedIndividual
InformationAsset = ClassOfBoundedIndividual

postulate --  InformationAsset is subTypeOf AssetType
  st-27a44f796407c1e4 : InformationAsset ⊏ₑ AssetType

postulate --  InformationAsset withAspect InformationBlock
  st-8f1c9a7768ca8cfd : InformationAsset ⊏ₐₑ (InformationBlock (lsuc(lzero)))

-- == Relationships =======================

{- Specialized Information Asset: -}
specializedInformationAsset :  Linkage InformationAsset InformationAsset
specializedInformationAsset = make_subTypeOf "Specialized Information Asset" "specializedInformationAsset"

postulate -- specializedInformationAsset is subTypeOf subTypeOfEntity
  st-325a372e66f33bca-8336837268e9448b  : specializedInformationAsset   ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}

{- Realized Information Asset: -}
realizedInformationAsset :  Linkage InformationAsset InformationAsset
realizedInformationAsset = make_subTypeOf "Realized Information Asset" "realizedInformationAsset"

postulate -- realizedInformationAsset is subTypeOf subTypeOfEntity
  st-325a3a0b66f354a7-8336837268e9448b  : realizedInformationAsset   ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}

{- Data Category: 
Classification of an Information Asset as belonging to a Data Category.
-}
dataCategory : ∀ {u} →  Linkage InformationAsset (DataCategory u)
dataCategory = make_instanceOf "Data Category" "dataCategory"

postulate -- dataCategory is subTypeOf categoryOfArchitectureBlock
  st-435652586a111043-f69620606a0f9c94  : dataCategory  {lsuc(lsuc(lzero))}  ⊏⋆ᵣ  categoryOfArchitectureBlock  {lsuc(lsuc(lzero))}

{- Information Asset Relationship: 
An Information Asset Relationship is a characteristic of an Information Asset.It can be either an Information Relationship or a Property Component.
-}
-- Aggregate Member : Information Asset Relationship
InformationAssetRelationship : ClassOfClassOfIndividual
InformationAssetRelationship = ClassOfIndividual

-- Membership relation
membershipOfInformationAssetRelationship :  Linkage InformationAsset InformationAssetRelationship
membershipOfInformationAssetRelationship = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationAssetInformationAssetRelationship :  Linkage InformationAssetRelationship InformationAsset
aggregationOfInformationAssetInformationAssetRelationship = aggregationOfBuildingBlock

{- informationAssetRelationship : derived relation obtained by composing
   membershipOfInformationAssetRelationship and aggregationOfInformationAssetInformationAssetRelationship
   It directly links an Information Asset to the final aggregated InformationAsset
   hiding the reifying InformationAssetRelationship
-}
informationAssetRelationship : Linkage InformationAsset InformationAsset
informationAssetRelationship = membershipOfInformationAssetRelationship  ∘  aggregationOfInformationAssetInformationAssetRelationship

{- Data Risk: 
A Data Risk is Risk that refers to the potential for loss resulting from inadequate structure and usage of an Information Asset.
-}
-- Aggregate Member : Data Risk
DataRisk : ThirdOrderClass
DataRisk = SecondOrderClass

-- Membership relation
membershipOfDataRisk :  Linkage InformationAsset DataRisk
membershipOfDataRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataRiskTypeDataRisk :  Linkage DataRisk DataRiskType
aggregationOfDataRiskTypeDataRisk = aggregationOfBuildingBlock

{- dataRisk : derived relation obtained by composing
   membershipOfDataRisk and aggregationOfDataRiskTypeDataRisk
   It directly links an Information Asset to the final aggregated DataRiskType
   hiding the reifying DataRisk
-}
dataRisk : Linkage InformationAsset DataRiskType
dataRisk = membershipOfDataRisk  ∘  aggregationOfDataRiskTypeDataRisk
