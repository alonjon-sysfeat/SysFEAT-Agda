{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Software System: 
A Logical Software System is logical specification of a Business Software System, which is independant from the Business Software System physical implementation.For instance,  Human Resource ERP System  is a Logical Application System, while  SAP HR System ,  Sage HR System ,  Kronos HR System  are Application Systems.

Documentation : https://framework.sysfeat.com/pages/2558338d5c6d1d1b.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2558338d5c6d1d1b where -- ========== Logical Software System

open import Agda.Primitive
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System
open import SysFEAT.EA.9dce9f8d5ec76311 public -- Application Interface
open import SysFEAT.EA.461950e9560d4461 public -- Logical Data Domain

LogicalSOftwareSystem : ClassOfClassOfBoundedIndividual
LogicalSOftwareSystem = ClassOfBoundedIndividual


--  LogicalSOftwareSystem is subTypeOf BusinessSOftwareSystem
st-2558338d5c6d1d1b-d6cd02865ab966e8 : LogicalSOftwareSystem ⊏ₑ BusinessSOftwareSystem
st-2558338d5c6d1d1b-d6cd02865ab966e8 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Logical Software Channel: -}
-- Aggregate Member : Logical Software Channel
LogicalSOftwareChannel : ClassOfClassOfIndividual
LogicalSOftwareChannel = ClassOfIndividual


--  LogicalSOftwareChannel is subTypeOf SOftwareConnection
st-139318a2607f2589-9dcea1235ec76646 : LogicalSOftwareChannel ⊏ₑ SOftwareConnection
st-139318a2607f2589-9dcea1235ec76646 = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalSOftwareChannel :  Linkage LogicalSOftwareSystem LogicalSOftwareChannel
membershipOfLogicalSOftwareChannel = make_upwardNestingRelation "logicalSOftwareChannel membership" "nested logicalSOftwareChannel"

-- Aggregation relation
aggregationOfApplicationInterfaceLogicalSOftwareChannel :  Linkage LogicalSOftwareChannel ApplicationInterface
aggregationOfApplicationInterfaceLogicalSOftwareChannel = make_Relation "ApplicationInterface aggregation" "aggregated ApplicationInterface"

{- logicalSOftwareChannel : derived relation obtained by composing
   membershipOfLogicalSOftwareChannel and aggregationOfApplicationInterfaceLogicalSOftwareChannel
   It directly links an Logical Software System to the final aggregated ApplicationInterface
   hiding the reifying LogicalSOftwareChannel
-}
logicalSOftwareChannel : Linkage LogicalSOftwareSystem ApplicationInterface
logicalSOftwareChannel = membershipOfLogicalSOftwareChannel  ∘  aggregationOfApplicationInterfaceLogicalSOftwareChannel



-- -------------------------------------------------------------------------------------------- 
{- Logical Data Store: -}
-- Aggregate Member : Logical Data Store
LogicalDataStore : ClassOfClassOfIndividual
LogicalDataStore = ClassOfIndividual


--  LogicalDataStore is subTypeOf Physicaldatastore
st-0f0f1277607f70b3-7b8780615eb81b83 : LogicalDataStore ⊏ₑ Physicaldatastore
st-0f0f1277607f70b3-7b8780615eb81b83 = polySubTypeOf-identity

--  LogicalDataStore is subTypeOf LogicalDataDomain
st-0f0f1277607f70b3-461950e9560d4461 : LogicalDataStore ⊏ₑ LogicalDataDomain
st-0f0f1277607f70b3-461950e9560d4461 = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalDataStore :  Linkage LogicalSOftwareSystem LogicalDataStore
membershipOfLogicalDataStore = make_upwardNestingRelation "logicalDataStore membership" "nested logicalDataStore"

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataStore :  Linkage LogicalDataStore LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataStore = make_Relation "LogicalDataDomain aggregation" "aggregated LogicalDataDomain"

{- logicalDataStore : derived relation obtained by composing
   membershipOfLogicalDataStore and aggregationOfLogicalDataDomainLogicalDataStore
   It directly links an Logical Software System to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataStore
-}
logicalDataStore : Linkage LogicalSOftwareSystem LogicalDataDomain
logicalDataStore = membershipOfLogicalDataStore  ∘  aggregationOfLogicalDataDomainLogicalDataStore



-- -------------------------------------------------------------------------------------------- 
{- Logical Software Member: -}
-- Aggregate Member : Logical Software Member
LogicalSOftwareMember : ClassOfClassOfBoundedIndividual
LogicalSOftwareMember = ClassOfBoundedIndividual



--  LogicalSOftwareMember is subTypeOf SOftwarePart
st-13931800607f240a-173f4d015eb8c686 : LogicalSOftwareMember ⊏ₑ SOftwarePart
st-13931800607f240a-173f4d015eb8c686 = polySubTypeOf-identity

--  LogicalSOftwareMember is subTypeOf LogicalSOftwareSystem
st-13931800607f240a-2558338d5c6d1d1b : LogicalSOftwareMember ⊏ₑ LogicalSOftwareSystem
st-13931800607f240a-2558338d5c6d1d1b = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalSOftwareMember :  Linkage LogicalSOftwareSystem LogicalSOftwareMember
membershipOfLogicalSOftwareMember = make_upwardNestingRelation "logicalSOftwareMember membership" "nested logicalSOftwareMember"

-- Aggregation relation
aggregationOfLogicalSOftwareSystemLogicalSOftwareMember :  Linkage LogicalSOftwareMember LogicalSOftwareSystem
aggregationOfLogicalSOftwareSystemLogicalSOftwareMember = make_Relation "LogicalSOftwareSystem aggregation" "aggregated LogicalSOftwareSystem"

{- logicalSOftwareMember : derived relation obtained by composing
   membershipOfLogicalSOftwareMember and aggregationOfLogicalSOftwareSystemLogicalSOftwareMember
   It directly links an Logical Software System to the final aggregated LogicalSOftwareSystem
   hiding the reifying LogicalSOftwareMember
-}
logicalSOftwareMember : Linkage LogicalSOftwareSystem LogicalSOftwareSystem
logicalSOftwareMember = membershipOfLogicalSOftwareMember  ∘  aggregationOfLogicalSOftwareSystemLogicalSOftwareMember


