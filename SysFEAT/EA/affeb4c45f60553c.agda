{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Field Snapshot: 
A Data Field Snapshot is status of a NoSQL Field a the time of data discovery. it provides factual information such as , Minimum Value, Maximum Value, etc.Data Field Snapshots are used for quality assessments in data governance.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.affeb4c45f60553c where -- ========== Data Field Snapshot

open import Agda.Primitive
open import SysFEAT.EA.762580705f6bd560 public -- Data Source Snaphot Item

DataFieldSnapshot : ClassOfBoundedIndividual
DataFieldSnapshot = BoundedIndividual

--  DataFieldSnapshot is subTypeOf DataSourceSnaphotItem
st-762586795f6be7f2 : DataFieldSnapshot ⊏ₑ DataSourceSnaphotItem
st-762586795f6be7f2 = polySubTypeOf-identity


