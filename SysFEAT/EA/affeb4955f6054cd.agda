{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Set Snapshot: 
A Data Set Snapshot is status of a NoSQL Dataset a the time of data discovery. It provides factual information on the NoSQL Dataset such as Number of Unique Values, Number of Entities, Number of Completed Records, etc.Data Set Snapshots are used for quality assessments in data governance.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.affeb4955f6054cd where -- ========== Data Set Snapshot

open import Agda.Primitive
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.EA.762580705f6bd560 public -- Data Source Snaphot Item
open import SysFEAT.EA.254e46f95f7f83ec public -- NoSQL Dataset

DataSetSnapshot : ClassOfBoundedIndividual
DataSetSnapshot = BoundedIndividual

--  DataSetSnapshot is subTypeOf DeployedBusinessSystem
st-e6f236d05f7781b2 : DataSetSnapshot ⊏ₑ DeployedBusinessSystem
st-e6f236d05f7781b2 = polySubTypeOf-identity

--  DataSetSnapshot is subTypeOf DataSourceSnaphotItem
st-762586745f6be7ac : DataSetSnapshot ⊏ₑ DataSourceSnaphotItem
st-762586745f6be7ac = polySubTypeOf-identity

-- == Relationships =======================

{- Data Field Snapshot: -}
-- Aggregate Member : Data Field Snapshot
DataFieldSnapshot : ClassOfOrderedEntity (lsuc(lzero))
DataFieldSnapshot = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfDataFieldSnapshot :  Linkage DataSetSnapshot DataFieldSnapshot
membershipOfDataFieldSnapshot = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataSetSnapshotDataFieldSnapshot :  Linkage DataFieldSnapshot DataSetSnapshot
aggregationOfDataSetSnapshotDataFieldSnapshot = aggregationOfBuildingBlock

{- dataFieldSnapshot : derived relation obtained by composing
   membershipOfDataFieldSnapshot and aggregationOfDataSetSnapshotDataFieldSnapshot
   It directly links an Data Set Snapshot to the final aggregated DataSetSnapshot
   hiding the reifying DataFieldSnapshot
-}
dataFieldSnapshot : Linkage DataSetSnapshot DataSetSnapshot
dataFieldSnapshot = membershipOfDataFieldSnapshot  ∘  aggregationOfDataSetSnapshotDataFieldSnapshot
