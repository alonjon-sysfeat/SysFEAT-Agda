{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Application System: 
A Logical Application Architecture is an assembly of other Logical Application Architectures, of Logical Applications and of end users, in order to realize one of more functionalities. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.255833cb5c6d1d64 where -- ========== Logical Application System

open import Agda.Primitive
open import SysFEAT.EA.2558338d5c6d1d1b public -- Logical Software System
open import SysFEAT.EA.461950e9560d4461 public -- Logical Data Domain
open import SysFEAT.EA.255833f95c6d1db3 public -- Logical Application

LogicalApplicationSystem : ClassOfClassOfBoundedIndividual
LogicalApplicationSystem = ClassOfBoundedIndividual

--  LogicalApplicationSystem is subTypeOf LogicalSOftwareSystem
st-255833dc5c6d1d8c : LogicalApplicationSystem ⊏ₑ LogicalSOftwareSystem
st-255833dc5c6d1d8c = polySubTypeOf-identity

-- == Relationships =======================

{- Logical Data Store: -}
-- Aggregate Member : Logical Data Store
LogicalDataStore : ClassOfClassOfIndividual
LogicalDataStore = ClassOfIndividual

-- Membership relation
membershipOfLogicalDataStore :  Linkage LogicalApplicationSystem LogicalDataStore
membershipOfLogicalDataStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataStore :  Linkage LogicalDataStore LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataStore = aggregationOfBuildingBlock

{- logicalDataStore : derived relation obtained by composing
   membershipOfLogicalDataStore and aggregationOfLogicalDataDomainLogicalDataStore
   It directly links an Logical Application System to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataStore
-}
logicalDataStore : Linkage LogicalApplicationSystem LogicalDataDomain
logicalDataStore = membershipOfLogicalDataStore  ∘  aggregationOfLogicalDataDomainLogicalDataStore

{- Logical Application System Part: 
Role of an IT Service architecture in a composition relationship that links it to a parent IT Service architecture. 
-}
-- Aggregate Member : Logical Application System Part
LogicalApplicationSystemPart : ClassOfClassOfIndividual
LogicalApplicationSystemPart = ClassOfIndividual

-- Membership relation
membershipOfLogicalApplicationSystemPart :  Linkage LogicalApplicationSystem LogicalApplicationSystemPart
membershipOfLogicalApplicationSystemPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalApplicationSystemLogicalApplicationSystemPart :  Linkage LogicalApplicationSystemPart LogicalApplicationSystem
aggregationOfLogicalApplicationSystemLogicalApplicationSystemPart = aggregationOfBuildingBlock

{- logicalApplicationSystemPart : derived relation obtained by composing
   membershipOfLogicalApplicationSystemPart and aggregationOfLogicalApplicationSystemLogicalApplicationSystemPart
   It directly links an Logical Application System to the final aggregated LogicalApplicationSystem
   hiding the reifying LogicalApplicationSystemPart
-}
logicalApplicationSystemPart : Linkage LogicalApplicationSystem LogicalApplicationSystem
logicalApplicationSystemPart = membershipOfLogicalApplicationSystemPart  ∘  aggregationOfLogicalApplicationSystemLogicalApplicationSystemPart

{- Logical Application Part: 
A Logical Application Component defines how a Logical Application breakdowns into a sub-Logical Application
-}
-- Aggregate Member : Logical Application Part
LogicalApplicationPart : ClassOfClassOfIndividual
LogicalApplicationPart = ClassOfIndividual

-- Membership relation
membershipOfLogicalApplicationPart :  Linkage LogicalApplicationSystem LogicalApplicationPart
membershipOfLogicalApplicationPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalApplicationLogicalApplicationPart :  Linkage LogicalApplicationPart LogicalApplication
aggregationOfLogicalApplicationLogicalApplicationPart = aggregationOfBuildingBlock

{- logicalApplicationPart : derived relation obtained by composing
   membershipOfLogicalApplicationPart and aggregationOfLogicalApplicationLogicalApplicationPart
   It directly links an Logical Application System to the final aggregated LogicalApplication
   hiding the reifying LogicalApplicationPart
-}
logicalApplicationPart : Linkage LogicalApplicationSystem LogicalApplication
logicalApplicationPart = membershipOfLogicalApplicationPart  ∘  aggregationOfLogicalApplicationLogicalApplicationPart
