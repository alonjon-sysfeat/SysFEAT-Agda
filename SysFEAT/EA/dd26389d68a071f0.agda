{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Functionality Map: 
Family of Functionalitys and their dependencies that, together, defines the scope of a hardware or software architecture.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26389d68a071f0 where -- ========== Functionality Map

open import Agda.Primitive
open import SysFEAT..dd2638ba68a073a8 public -- Business Resource Capability Map
open import SysFEAT.EA.dd26aa0568a1f939 public -- Functionality

FunctionalityMap : PropertyType
FunctionalityMap = ClassOfProperty

--  FunctionalityMap is subTypeOf BusinessResourceCapabilityMap
st-7c40a1a855272883 : FunctionalityMap ⊏ₑ BusinessResourceCapabilityMap
st-7c40a1a855272883 = polySubTypeOf-identity

-- == Relationships =======================

{- Scoped Functionality: 
Set of Functionalitys that are is the scope of a Functionality Map.
-}
-- Aggregate Member : Scoped Functionality
ScopedFunctionality : ClassOfClassOfIndividual
ScopedFunctionality = ClassOfIndividual

-- Membership relation
membershipOfScopedFunctionality :  Linkage FunctionalityMap ScopedFunctionality
membershipOfScopedFunctionality = membershipOfAggregateMember

-- Aggregation relation
aggregationOfFunctionalityScopedFunctionality :  Linkage ScopedFunctionality Functionality
aggregationOfFunctionalityScopedFunctionality = aggregationOfBuildingBlock

{- scopedFunctionality : derived relation obtained by composing
   membershipOfScopedFunctionality and aggregationOfFunctionalityScopedFunctionality
   It directly links an Functionality Map to the final aggregated Functionality
   hiding the reifying ScopedFunctionality
-}
scopedFunctionality : Linkage FunctionalityMap Functionality
scopedFunctionality = membershipOfScopedFunctionality  ∘  aggregationOfFunctionalityScopedFunctionality
