{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology System: 
A Software Technology System is a Technology System that provides Software Technology Capabilitys to other Business Software Systems by producing and reacting to Software Technology Outcome Event.Software Technology Systems are enabler systems. They do not directly deliver Business Outcome Events to internal or external customers.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0463ea9a63fd8b6c where -- ========== Software Technology System

open import Agda.Primitive
open import SysFEAT.EA.0cbd1fa663fe18ac public -- Technology System
open import SysFEAT.EA.24035cc65fc7ad7f public -- Concrete Software System
open import SysFEAT.EA.624e6ac55ed972a7 public -- Physical Software Interface

SOftwareTechnologySystem : ClassOfClassOfBoundedIndividual
SOftwareTechnologySystem = ClassOfBoundedIndividual

--  SOftwareTechnologySystem is subTypeOf TechnologySystem
st-70ba30f164237308 : SOftwareTechnologySystem ⊏ₑ TechnologySystem
st-70ba30f164237308 = polySubTypeOf-identity

--  SOftwareTechnologySystem is subTypeOf ConcreteSOftwareSystem
st-0463eb8b63fd8c8d : SOftwareTechnologySystem ⊏ₑ ConcreteSOftwareSystem
st-0463eb8b63fd8c8d = polySubTypeOf-identity

-- == Relationships =======================

{- Software Technology Connection: -}
-- Aggregate Member : Software Technology Connection
SOftwareTechnologyConnection : ClassOfClassOfIndividual
SOftwareTechnologyConnection = ClassOfIndividual

-- Membership relation
membershipOfSOftwareTechnologyConnection :  Linkage SOftwareTechnologySystem SOftwareTechnologyConnection
membershipOfSOftwareTechnologyConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalSOftwareInterfaceSOftwareTechnologyConnection :  Linkage SOftwareTechnologyConnection PhysicalSOftwareInterface
aggregationOfPhysicalSOftwareInterfaceSOftwareTechnologyConnection = aggregationOfBuildingBlock

{- sOftwareTechnologyConnection : derived relation obtained by composing
   membershipOfSOftwareTechnologyConnection and aggregationOfPhysicalSOftwareInterfaceSOftwareTechnologyConnection
   It directly links an Software Technology System to the final aggregated PhysicalSOftwareInterface
   hiding the reifying SOftwareTechnologyConnection
-}
sOftwareTechnologyConnection : Linkage SOftwareTechnologySystem PhysicalSOftwareInterface
sOftwareTechnologyConnection = membershipOfSOftwareTechnologyConnection  ∘  aggregationOfPhysicalSOftwareInterfaceSOftwareTechnologyConnection

{- Software System Part: 
Kind of artifact that provides technical functionalities to other artifacts and that is not directly used by humans to achieve their duty.
-}
-- Aggregate Member : Software System Part
SOftwareSystemPart : ClassOfClassOfIndividual
SOftwareSystemPart = ClassOfIndividual

-- Membership relation
membershipOfSOftwareSystemPart :  Linkage SOftwareTechnologySystem SOftwareSystemPart
membershipOfSOftwareSystemPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSOftwareTechnologySystemSOftwareSystemPart :  Linkage SOftwareSystemPart SOftwareTechnologySystem
aggregationOfSOftwareTechnologySystemSOftwareSystemPart = aggregationOfBuildingBlock

{- sOftwareSystemPart : derived relation obtained by composing
   membershipOfSOftwareSystemPart and aggregationOfSOftwareTechnologySystemSOftwareSystemPart
   It directly links an Software Technology System to the final aggregated SOftwareTechnologySystem
   hiding the reifying SOftwareSystemPart
-}
sOftwareSystemPart : Linkage SOftwareTechnologySystem SOftwareTechnologySystem
sOftwareSystemPart = membershipOfSOftwareSystemPart  ∘  aggregationOfSOftwareTechnologySystemSOftwareSystemPart
