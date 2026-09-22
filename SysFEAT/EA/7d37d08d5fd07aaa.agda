{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Asset: 
A Physical Data Asset  represents the physical structure of any kind of data that can be memorized by a Business Software System.A Physical Data Asset is either a Physical Data Entity or a Physical Data Property.Only Physical Data Entitys can have an identity can by be referenced by Physical Relationship. Physical Data Property only handle raw data.

Documentation : https://framework.sysfeat.com/pages/7d37d08d5fd07aaa.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d37d08d5fd07aaa where -- ========== Physical Data Asset

open import Agda.Primitive
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block

PhysicalDataAsset : ClassOfClassOfBoundedIndividual
PhysicalDataAsset = ClassOfBoundedIndividual

--  PhysicalDataAsset is subTypeOf DataAsset
st-7d37d08d5fd07aaa-6d2b7c935fbb6270 : PhysicalDataAsset ⊏ₑ DataAsset
st-7d37d08d5fd07aaa-6d2b7c935fbb6270 = polySubTypeOf-identity

--  PhysicalDataAsset withAspect PhysicalDataBlock
st-7d37d08d5fd07aaa-8f1cad7d68ca9df0 : PhysicalDataAsset ⊏ₐₑ (PhysicalDataBlock (lsuc(lzero)))
st-7d37d08d5fd07aaa-8f1cad7d68ca9df0 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Physical Object: -}
specializedPhysicalObject :  Linkage PhysicalDataAsset PhysicalDataAsset
specializedPhysicalObject = make_subTypeOf "Specialized Physical Object" "Specialized Physical Object"

postulate -- specializedPhysicalObject is subTypeOf specializedDataObject
  st-325a375566f33e9b-325a380d66f3515e  : specializedPhysicalObject  ⊏⋆ᵣ  specializedDataObject

-- -------------------------------------------------------------------------------------------- 
{- Realized Data Asset: -}
realizedDataAsset :  Linkage PhysicalDataAsset DataAsset
realizedDataAsset = make_subTypeOf "Realized Data Asset" "Realized Data Asset"

postulate -- realizedDataAsset is subTypeOf realizedInformationAsset
  st-325a3a1166f358c9-325a3a0b66f354a7  : realizedDataAsset  ⊏⋆ᵣ  realizedInformationAsset

-- -------------------------------------------------------------------------------------------- 
{- Physical Data Member: 
A Physical Data Member is a characteristic of a Physical Data Asset.It can be either a Physical Relationship or a Physical Data Slot.
-}
-- Aggregate Member : Physical Data Member
PhysicalDataMember : ClassOfClassOfBoundedIndividual
PhysicalDataMember = ClassOfBoundedIndividual



--  PhysicalDataMember is subTypeOf DataObjectMember
st-163c29e85fda678c-b6e3cdf35fbb6ad1 : PhysicalDataMember ⊏ₑ DataObjectMember
st-163c29e85fda678c-b6e3cdf35fbb6ad1 = polySubTypeOf-identity

--  PhysicalDataMember is subTypeOf PhysicalDataAsset
st-163c29e85fda678c-7d37d08d5fd07aaa : PhysicalDataMember ⊏ₑ PhysicalDataAsset
st-163c29e85fda678c-7d37d08d5fd07aaa = polySubTypeOf-identity

-- Membership relation
membershipOfPhysicalDataMember :  Linkage PhysicalDataAsset PhysicalDataMember
membershipOfPhysicalDataMember = make_upwardNestingRelation "physicalDataMember membership" "nested physicalDataMember"

-- Aggregation relation
aggregationOfPhysicalDataAssetPhysicalDataMember :  Linkage PhysicalDataMember PhysicalDataAsset
aggregationOfPhysicalDataAssetPhysicalDataMember = make_Relation "PhysicalDataAsset aggregation" "aggregated PhysicalDataAsset"

{- physicalDataMember : derived relation obtained by composing
   membershipOfPhysicalDataMember and aggregationOfPhysicalDataAssetPhysicalDataMember
   It directly links an Physical Data Asset to the final aggregated PhysicalDataAsset
   hiding the reifying PhysicalDataMember
-}
physicalDataMember : Linkage PhysicalDataAsset PhysicalDataAsset
physicalDataMember = membershipOfPhysicalDataMember  ∘  aggregationOfPhysicalDataAssetPhysicalDataMember


