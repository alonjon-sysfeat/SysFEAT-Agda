{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Application System: 
A Logical Application Architecture is an assembly of other Logical Application Architectures, of Logical Applications and of end users, in order to realize one of more functionalities. 

Documentation : https://framework.sysfeat.com/pages/255833cb5c6d1d64.htm

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
st-255833cb5c6d1d64-2558338d5c6d1d1b : LogicalApplicationSystem ⊏ₑ LogicalSOftwareSystem
st-255833cb5c6d1d64-2558338d5c6d1d1b = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Logical Data Store: -}
-- Aggregate Member : Logical Data Store
LogicalDataStore : ClassOfClassOfIndividual
LogicalDataStore = ClassOfIndividual


--  LogicalDataStore is subTypeOf LogicalDataDomain
st-137d20905ee2c46f-461950e9560d4461 : LogicalDataStore ⊏ₑ LogicalDataDomain
st-137d20905ee2c46f-461950e9560d4461 = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalDataStore :  Linkage LogicalApplicationSystem LogicalDataStore
membershipOfLogicalDataStore = make_upwardNestingRelation "logicalDataStore membership" "nested logicalDataStore"

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataStore :  Linkage LogicalDataStore LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataStore = make_Relation "LogicalDataDomain aggregation" "aggregated LogicalDataDomain"

{- logicalDataStore : derived relation obtained by composing
   membershipOfLogicalDataStore and aggregationOfLogicalDataDomainLogicalDataStore
   It directly links an Logical Application System to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataStore
-}
logicalDataStore : Linkage LogicalApplicationSystem LogicalDataDomain
logicalDataStore = membershipOfLogicalDataStore  ∘  aggregationOfLogicalDataDomainLogicalDataStore



-- -------------------------------------------------------------------------------------------- 
{- Logical Application System Part: 
Role of an IT Service architecture in a composition relationship that links it to a parent IT Service architecture. 
-}
-- Aggregate Member : Logical Application System Part
LogicalApplicationSystemPart : ClassOfClassOfBoundedIndividual
LogicalApplicationSystemPart = ClassOfBoundedIndividual



--  LogicalApplicationSystemPart is subTypeOf LogicalApplicationSystem
st-f4bee8265ee1c035-255833cb5c6d1d64 : LogicalApplicationSystemPart ⊏ₑ LogicalApplicationSystem
st-f4bee8265ee1c035-255833cb5c6d1d64 = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalApplicationSystemPart :  Linkage LogicalApplicationSystem LogicalApplicationSystemPart
membershipOfLogicalApplicationSystemPart = make_upwardNestingRelation "logicalApplicationSystemPart membership" "nested logicalApplicationSystemPart"

-- Aggregation relation
aggregationOfLogicalApplicationSystemLogicalApplicationSystemPart :  Linkage LogicalApplicationSystemPart LogicalApplicationSystem
aggregationOfLogicalApplicationSystemLogicalApplicationSystemPart = make_Relation "LogicalApplicationSystem aggregation" "aggregated LogicalApplicationSystem"

{- logicalApplicationSystemPart : derived relation obtained by composing
   membershipOfLogicalApplicationSystemPart and aggregationOfLogicalApplicationSystemLogicalApplicationSystemPart
   It directly links an Logical Application System to the final aggregated LogicalApplicationSystem
   hiding the reifying LogicalApplicationSystemPart
-}
logicalApplicationSystemPart : Linkage LogicalApplicationSystem LogicalApplicationSystem
logicalApplicationSystemPart = membershipOfLogicalApplicationSystemPart  ∘  aggregationOfLogicalApplicationSystemLogicalApplicationSystemPart



-- -------------------------------------------------------------------------------------------- 
{- Logical Application Part: 
A Logical Application Component defines how a Logical Application breakdowns into a sub-Logical Application
-}
-- Aggregate Member : Logical Application Part
LogicalApplicationPart : ClassOfClassOfBoundedIndividual
LogicalApplicationPart = ClassOfBoundedIndividual



--  LogicalApplicationPart is subTypeOf LogicalApplication
st-f4bee86b5ee1c0de-255833f95c6d1db3 : LogicalApplicationPart ⊏ₑ LogicalApplication
st-f4bee86b5ee1c0de-255833f95c6d1db3 = polySubTypeOf-identity

-- Membership relation
membershipOfLogicalApplicationPart :  Linkage LogicalApplicationSystem LogicalApplicationPart
membershipOfLogicalApplicationPart = make_upwardNestingRelation "logicalApplicationPart membership" "nested logicalApplicationPart"

-- Aggregation relation
aggregationOfLogicalApplicationLogicalApplicationPart :  Linkage LogicalApplicationPart LogicalApplication
aggregationOfLogicalApplicationLogicalApplicationPart = make_Relation "LogicalApplication aggregation" "aggregated LogicalApplication"

{- logicalApplicationPart : derived relation obtained by composing
   membershipOfLogicalApplicationPart and aggregationOfLogicalApplicationLogicalApplicationPart
   It directly links an Logical Application System to the final aggregated LogicalApplication
   hiding the reifying LogicalApplicationPart
-}
logicalApplicationPart : Linkage LogicalApplicationSystem LogicalApplication
logicalApplicationPart = membershipOfLogicalApplicationPart  ∘  aggregationOfLogicalApplicationLogicalApplicationPart


