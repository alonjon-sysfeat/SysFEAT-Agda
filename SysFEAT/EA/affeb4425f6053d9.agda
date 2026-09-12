{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Inventory Snapshot: 
A Data Inventory Snapshot the state a Deployed Data Store at a given period.This state comprises the status of all monitored NoSQL Datasets and of the value slot owned by these NoSQL Datasets.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.affeb4425f6053d9 where -- ========== Data Inventory Snapshot

open import Agda.Primitive
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.SOF.0eb95dce6855be2e public -- Model Container
open import SysFEAT.EA.affeb2255f6051e6 public -- Deployed Data Store
open import SysFEAT.EA.affeb4955f6054cd public -- Data Set Snapshot

DataInventorySnapshot : ClassOfBoundedIndividual
DataInventorySnapshot = BoundedIndividual

--  DataInventorySnapshot is subTypeOf DeployedBusinessSystem
st-364209516008fc07 : DataInventorySnapshot ⊏ₑ DeployedBusinessSystem
st-364209516008fc07 = polySubTypeOf-identity

--  DataInventorySnapshot withAspect ModelContainer
st-6699fcdf60492b56 : DataInventorySnapshot ⊏ₐₑ (ModelContainer lzero)
st-6699fcdf60492b56 = polySubTypeOf-identity

-- == Relationships =======================

{- registered snapshot: -}
registeredsnapshot :  Linkage DataInventorySnapshot DeployedDataStore
registeredsnapshot = make_holonymyRelation "registered snapshot" "registeredsnapshot"


{- Owned Data Set Snapshot: -}
ownedDataSetSnapshot :  Linkage DataInventorySnapshot DataSetSnapshot
ownedDataSetSnapshot = make_holonymyRelation "Owned Data Set Snapshot" "ownedDataSetSnapshot"

