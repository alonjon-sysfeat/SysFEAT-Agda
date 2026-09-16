{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology System: 
A Software Technology System is a Technology System that provides Software Technology Capabilitys to other Business Software Systems by producing and reacting to Software Technology Outcome Event.Software Technology Systems are enabler systems. They do not directly deliver Business Outcome Events to internal or external customers.

Documentation : https://framework.sysfeat.com/pages/0463ea9a63fd8b6c.htm

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
st-0463ea9a63fd8b6c-0cbd1fa663fe18ac : SOftwareTechnologySystem ⊏ₑ TechnologySystem
st-0463ea9a63fd8b6c-0cbd1fa663fe18ac = polySubTypeOf-identity

--  SOftwareTechnologySystem is subTypeOf ConcreteSOftwareSystem
st-0463ea9a63fd8b6c-24035cc65fc7ad7f : SOftwareTechnologySystem ⊏ₑ ConcreteSOftwareSystem
st-0463ea9a63fd8b6c-24035cc65fc7ad7f = polySubTypeOf-identity

-- == Relationships =======================

{- Software Technology Connection: -}
-- Aggregate Member : Software Technology Connection
SOftwareTechnologyConnection : ClassOfClassOfIndividual
SOftwareTechnologyConnection = ClassOfIndividual

-- Membership relation
membershipOfSOftwareTechnologyConnection :  Linkage SOftwareTechnologySystem SOftwareTechnologyConnection
membershipOfSOftwareTechnologyConnection = make_upwardNestingRelation "sOftwareTechnologyConnection membership" "nested sOftwareTechnologyConnection"

-- Aggregation relation
aggregationOfPhysicalSOftwareInterfaceSOftwareTechnologyConnection :  Linkage SOftwareTechnologyConnection PhysicalSOftwareInterface
aggregationOfPhysicalSOftwareInterfaceSOftwareTechnologyConnection = make_Relation "PhysicalSOftwareInterface aggregation" "aggregated PhysicalSOftwareInterface"

{- sOftwareTechnologyConnection : derived relation obtained by composing
   membershipOfSOftwareTechnologyConnection and aggregationOfPhysicalSOftwareInterfaceSOftwareTechnologyConnection
   It directly links an Software Technology System to the final aggregated PhysicalSOftwareInterface
   hiding the reifying SOftwareTechnologyConnection
-}
sOftwareTechnologyConnection : Linkage SOftwareTechnologySystem PhysicalSOftwareInterface
sOftwareTechnologyConnection = membershipOfSOftwareTechnologyConnection  ∘  aggregationOfPhysicalSOftwareInterfaceSOftwareTechnologyConnection

postulate -- sOftwareTechnologyConnection is subTypeOf technologyConnection
  st-24035f005fc7b0ef-d1600add62e090a8  : sOftwareTechnologyConnection   ⊏⋆ᵣ  technologyConnection 


{- Software System Part: 
Kind of artifact that provides technical functionalities to other artifacts and that is not directly used by humans to achieve their duty.
-}
-- Aggregate Member : Software System Part
SOftwareSystemPart : ClassOfClassOfIndividual
SOftwareSystemPart = ClassOfIndividual

-- Membership relation
membershipOfSOftwareSystemPart :  Linkage SOftwareTechnologySystem SOftwareSystemPart
membershipOfSOftwareSystemPart = make_upwardNestingRelation "sOftwareSystemPart membership" "nested sOftwareSystemPart"

-- Aggregation relation
aggregationOfSOftwareTechnologySystemSOftwareSystemPart :  Linkage SOftwareSystemPart SOftwareTechnologySystem
aggregationOfSOftwareTechnologySystemSOftwareSystemPart = make_Relation "SOftwareTechnologySystem aggregation" "aggregated SOftwareTechnologySystem"

{- sOftwareSystemPart : derived relation obtained by composing
   membershipOfSOftwareSystemPart and aggregationOfSOftwareTechnologySystemSOftwareSystemPart
   It directly links an Software Technology System to the final aggregated SOftwareTechnologySystem
   hiding the reifying SOftwareSystemPart
-}
sOftwareSystemPart : Linkage SOftwareTechnologySystem SOftwareTechnologySystem
sOftwareSystemPart = membershipOfSOftwareSystemPart  ∘  aggregationOfSOftwareTechnologySystemSOftwareSystemPart

postulate -- sOftwareSystemPart is subTypeOf technologySystemMember
  st-24035e705fc7afb1-d1600a8f62e08fb2  : sOftwareSystemPart   ⊏⋆ᵣ  technologySystemMember 

