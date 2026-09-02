{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Software System: 
A Logical Software System is logical specification of a Business Software System, which is independant from the Business Software System physical implementation.For instance,  Human Resource ERP System  is a Logical Application System, while  SAP HR System ,  Sage HR System ,  Kronos HR System  are Application Systems.
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
st-6c0485af61f2e95e : LogicalSOftwareSystem ⊏ₑ BusinessSOftwareSystem
st-6c0485af61f2e95e = polySubTypeOf-identity

-- == Relationships =======================

{- Logical Software Channel: -}
-- Aggregate Member : Logical Software Channel
LogicalSOftwareChannel : ClassOfClassOfIndividual
LogicalSOftwareChannel = ClassOfIndividual

-- Membership relation
membershipOfLogicalSOftwareChannel :  Linkage LogicalSOftwareSystem LogicalSOftwareChannel
membershipOfLogicalSOftwareChannel = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationInterfaceLogicalSOftwareChannel :  Linkage LogicalSOftwareChannel ApplicationInterface
aggregationOfApplicationInterfaceLogicalSOftwareChannel = aggregationOfBuildingBlock

{- logicalSOftwareChannel : derived relation obtained by composing
   membershipOfLogicalSOftwareChannel and aggregationOfApplicationInterfaceLogicalSOftwareChannel
   It directly links an Logical Software System to the final aggregated ApplicationInterface
   hiding the reifying LogicalSOftwareChannel
-}
logicalSOftwareChannel : Linkage LogicalSOftwareSystem ApplicationInterface
logicalSOftwareChannel = membershipOfLogicalSOftwareChannel  ∘  aggregationOfApplicationInterfaceLogicalSOftwareChannel

{- Logical Data Store: -}
-- Aggregate Member : Logical Data Store
LogicalDataStore : ClassOfClassOfIndividual
LogicalDataStore = ClassOfIndividual

-- Membership relation
membershipOfLogicalDataStore :  Linkage LogicalSOftwareSystem LogicalDataStore
membershipOfLogicalDataStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataStore :  Linkage LogicalDataStore LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataStore = aggregationOfBuildingBlock

{- logicalDataStore : derived relation obtained by composing
   membershipOfLogicalDataStore and aggregationOfLogicalDataDomainLogicalDataStore
   It directly links an Logical Software System to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataStore
-}
logicalDataStore : Linkage LogicalSOftwareSystem LogicalDataDomain
logicalDataStore = membershipOfLogicalDataStore  ∘  aggregationOfLogicalDataDomainLogicalDataStore

{- Logical Software Member: -}
-- Aggregate Member : Logical Software Member
LogicalSOftwareMember : ClassOfClassOfIndividual
LogicalSOftwareMember = ClassOfIndividual

-- Membership relation
membershipOfLogicalSOftwareMember :  Linkage LogicalSOftwareSystem LogicalSOftwareMember
membershipOfLogicalSOftwareMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalSOftwareSystemLogicalSOftwareMember :  Linkage LogicalSOftwareMember LogicalSOftwareSystem
aggregationOfLogicalSOftwareSystemLogicalSOftwareMember = aggregationOfBuildingBlock

{- logicalSOftwareMember : derived relation obtained by composing
   membershipOfLogicalSOftwareMember and aggregationOfLogicalSOftwareSystemLogicalSOftwareMember
   It directly links an Logical Software System to the final aggregated LogicalSOftwareSystem
   hiding the reifying LogicalSOftwareMember
-}
logicalSOftwareMember : Linkage LogicalSOftwareSystem LogicalSOftwareSystem
logicalSOftwareMember = membershipOfLogicalSOftwareMember  ∘  aggregationOfLogicalSOftwareSystemLogicalSOftwareMember
