{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Asset: 
A Physical Data Asset  represents the physical structure of any kind of data that can be memorized by a Business Software System.A Physical Data Asset is either a Physical Data Entity or a Physical Data Property.Only Physical Data Entitys can have an identity can by be referenced by Physical Relationship. Physical Data Property only handle raw data.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d37d08d5fd07aaa where -- ========== Physical Data Asset

open import Agda.Primitive
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block

PhysicalDataAsset : ClassOfClassOfBoundedIndividual
PhysicalDataAsset = ClassOfBoundedIndividual

--  PhysicalDataAsset is subTypeOf DataAsset
st-7d37d09a5fd07b1a : PhysicalDataAsset ⊏ₑ DataAsset
st-7d37d09a5fd07b1a = polySubTypeOf-identity

--  PhysicalDataAsset withAspect PhysicalDataBlock
st-8f1cb95d68cab1b1 : PhysicalDataAsset ⊏ₐₑ (PhysicalDataBlock (lsuc(lzero)))
st-8f1cb95d68cab1b1 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Physical Object: -}
specializedPhysicalObject :  Linkage PhysicalDataAsset PhysicalDataAsset
specializedPhysicalObject = make_subTypeOf "Specialized Physical Object" "specializedPhysicalObject"

postulate -- specializedPhysicalObject is subTypeOf specializedDataObject
  st-325a375566f33e9b-325a380d66f3515e  : specializedPhysicalObject   ⊏⋆ᵣ  specializedDataObject 

{- Realized Data Asset: -}
realizedDataAsset :  Linkage PhysicalDataAsset DataAsset
realizedDataAsset = make_subTypeOf "Realized Data Asset" "realizedDataAsset"

postulate -- realizedDataAsset is subTypeOf realizedInformationAsset
  st-325a3a1166f358c9-325a3a0b66f354a7  : realizedDataAsset   ⊏⋆ᵣ  realizedInformationAsset 

{- Physical Data Member: 
A Physical Data Member is a characteristic of a Physical Data Asset.It can be either a Physical Relationship or a Physical Data Slot.
-}
-- Aggregate Member : Physical Data Member
PhysicalDataMember : ClassOfClassOfIndividual
PhysicalDataMember = ClassOfIndividual

-- Membership relation
membershipOfPhysicalDataMember :  Linkage PhysicalDataAsset PhysicalDataMember
membershipOfPhysicalDataMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataAssetPhysicalDataMember :  Linkage PhysicalDataMember PhysicalDataAsset
aggregationOfPhysicalDataAssetPhysicalDataMember = aggregationOfBuildingBlock

{- physicalDataMember : derived relation obtained by composing
   membershipOfPhysicalDataMember and aggregationOfPhysicalDataAssetPhysicalDataMember
   It directly links an Physical Data Asset to the final aggregated PhysicalDataAsset
   hiding the reifying PhysicalDataMember
-}
physicalDataMember : Linkage PhysicalDataAsset PhysicalDataAsset
physicalDataMember = membershipOfPhysicalDataMember  ∘  aggregationOfPhysicalDataAssetPhysicalDataMember
