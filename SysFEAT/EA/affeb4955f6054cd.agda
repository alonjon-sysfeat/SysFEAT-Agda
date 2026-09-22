{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Set Snapshot: 
A Data Set Snapshot is status of a NoSQL Dataset a the time of data discovery. It provides factual information on the NoSQL Dataset such as Number of Unique Values, Number of Entities, Number of Completed Records, etc.Data Set Snapshots are used for quality assessments in data governance.

Documentation : https://framework.sysfeat.com/pages/affeb4955f6054cd.htm

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
st-affeb4955f6054cd-3642454f6007e80e : DataSetSnapshot ⊏ₑ DeployedBusinessSystem
st-affeb4955f6054cd-3642454f6007e80e = polySubTypeOf-identity

--  DataSetSnapshot is subTypeOf DataSourceSnaphotItem
st-affeb4955f6054cd-762580705f6bd560 : DataSetSnapshot ⊏ₑ DataSourceSnaphotItem
st-affeb4955f6054cd-762580705f6bd560 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Data Field Snapshot: -}
-- Aggregate Member : Data Field Snapshot
DataFieldSnapshot : ClassOfBoundedIndividual
DataFieldSnapshot = BoundedIndividual



--  DataFieldSnapshot is subTypeOf DataSetSnapshot
st-8339876768e33caa-affeb4955f6054cd : DataFieldSnapshot ⊏ₑ DataSetSnapshot
st-8339876768e33caa-affeb4955f6054cd = polySubTypeOf-identity

-- Membership relation
membershipOfDataFieldSnapshot :  Linkage DataSetSnapshot DataFieldSnapshot
membershipOfDataFieldSnapshot = make_upwardNestingRelation "dataFieldSnapshot membership" "nested dataFieldSnapshot"

-- Aggregation relation
aggregationOfDataSetSnapshotDataFieldSnapshot :  Linkage DataFieldSnapshot DataSetSnapshot
aggregationOfDataSetSnapshotDataFieldSnapshot = make_Relation "DataSetSnapshot aggregation" "aggregated DataSetSnapshot"

{- dataFieldSnapshot : derived relation obtained by composing
   membershipOfDataFieldSnapshot and aggregationOfDataSetSnapshotDataFieldSnapshot
   It directly links an Data Set Snapshot to the final aggregated DataSetSnapshot
   hiding the reifying DataFieldSnapshot
-}
dataFieldSnapshot : Linkage DataSetSnapshot DataSetSnapshot
dataFieldSnapshot = membershipOfDataFieldSnapshot  ∘  aggregationOfDataSetSnapshotDataFieldSnapshot


