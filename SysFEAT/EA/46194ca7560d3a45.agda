{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System: 
An Application System is a Business Software System which is an assembly of multiple Applications or other Application Systems that, together, fulfill a set of  Macro Functionality(ies) delivered to Business Operations.Application Systems are used in the context of IT Strategic planning to define and evolve other time the hight level structure of the enterprise IT Architecture.Application System is a Macro enterprise asset that sit at the top of Business Software System decomposition hierarchy.Example:  HR System  is an Application System whereas  Payroll  is an Application that is part of the  HR system .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.46194ca7560d3a45 where -- ========== Application System

open import Agda.Primitive
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System
open import SysFEAT.EA.bcebd8e9549144db public -- Application
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.e4c0e7285ed0625d public -- Application System Scenario
open import SysFEAT.EA.d6a956495a395d28 public -- MicroService

ApplicationSystem : ClassOfClassOfBoundedIndividual
ApplicationSystem = ClassOfBoundedIndividual

--  ApplicationSystem is subTypeOf BusinessSOftwareSystem
st-d6cd03205ab96747 : ApplicationSystem ⊏ₑ BusinessSOftwareSystem
st-d6cd03205ab96747 = polySubTypeOf-identity

-- == Relationships =======================

{- Application System Member: 
Role of an application system in a composition relationship that links it to a parent application system. 
-}
-- Aggregate Member : Application System Member
ApplicationSystemMember : ClassOfClassOfIndividual
ApplicationSystemMember = ClassOfIndividual

-- Membership relation
membershipOfApplicationSystemMember :  Linkage ApplicationSystem ApplicationSystemMember
membershipOfApplicationSystemMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSystemApplicationSystemMember :  Linkage ApplicationSystemMember ApplicationSystem
aggregationOfApplicationSystemApplicationSystemMember = aggregationOfBuildingBlock

{- applicationSystemMember : derived relation obtained by composing
   membershipOfApplicationSystemMember and aggregationOfApplicationSystemApplicationSystemMember
   It directly links an Application System to the final aggregated ApplicationSystem
   hiding the reifying ApplicationSystemMember
-}
applicationSystemMember : Linkage ApplicationSystem ApplicationSystem
applicationSystemMember = membershipOfApplicationSystemMember  ∘  aggregationOfApplicationSystemApplicationSystemMember

{- Application Part: 
Role of an application in a composition relationship that links it to a parent application or a parent application architecture. 
-}
-- Aggregate Member : Application Part
ApplicationPart : ClassOfClassOfIndividual
ApplicationPart = ClassOfIndividual

-- Membership relation
membershipOfApplicationPart :  Linkage ApplicationSystem ApplicationPart
membershipOfApplicationPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationApplicationPart :  Linkage ApplicationPart Application
aggregationOfApplicationApplicationPart = aggregationOfBuildingBlock

{- applicationPart : derived relation obtained by composing
   membershipOfApplicationPart and aggregationOfApplicationApplicationPart
   It directly links an Application System to the final aggregated Application
   hiding the reifying ApplicationPart
-}
applicationPart : Linkage ApplicationSystem Application
applicationPart = membershipOfApplicationPart  ∘  aggregationOfApplicationApplicationPart

{- operator: 
Role of an organizational unit interacting at the boundary of an application architecture or a software service architecture. 
-}
-- Aggregate Member : operator
operator : ClassOfClassOfIndividual
operator = ClassOfIndividual

-- Membership relation
membershipOfoperator :  Linkage ApplicationSystem operator
membershipOfoperator = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrgUnitTypeoperator :  Linkage operator OrgUnitType
aggregationOfOrgUnitTypeoperator = aggregationOfBuildingBlock

{- operator : derived relation obtained by composing
   membershipOfoperator and aggregationOfOrgUnitTypeoperator
   It directly links an Application System to the final aggregated OrgUnitType
   hiding the reifying operator
-}
operator : Linkage ApplicationSystem OrgUnitType
operator = membershipOfoperator  ∘  aggregationOfOrgUnitTypeoperator

{- Performed Scenario: -}
-- Aggregate Member : Performed Scenario
PerformedScenario : ClassOfClassOfIndividual
PerformedScenario = ClassOfIndividual

-- Membership relation
membershipOfPerformedScenario :  Linkage ApplicationSystem PerformedScenario
membershipOfPerformedScenario = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSystemScenarioPerformedScenario :  Linkage PerformedScenario ApplicationSystemScenario
aggregationOfApplicationSystemScenarioPerformedScenario = aggregationOfBuildingBlock

{- performedScenario : derived relation obtained by composing
   membershipOfPerformedScenario and aggregationOfApplicationSystemScenarioPerformedScenario
   It directly links an Application System to the final aggregated ApplicationSystemScenario
   hiding the reifying PerformedScenario
-}
performedScenario : Linkage ApplicationSystem ApplicationSystemScenario
performedScenario = membershipOfPerformedScenario  ∘  aggregationOfApplicationSystemScenarioPerformedScenario

{- Micro-Service Part: 
A micro-service component represents the use of a micro-service in the structure of another software component (application, IT Service, micro-service) or in the environment of an application.
-}
-- Aggregate Member : Micro-Service Part
MicroServicePart : ClassOfClassOfIndividual
MicroServicePart = ClassOfIndividual

-- Membership relation
membershipOfMicroServicePart :  Linkage ApplicationSystem MicroServicePart
membershipOfMicroServicePart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfMicroServiceMicroServicePart :  Linkage MicroServicePart MicroService
aggregationOfMicroServiceMicroServicePart = aggregationOfBuildingBlock

{- microServicePart : derived relation obtained by composing
   membershipOfMicroServicePart and aggregationOfMicroServiceMicroServicePart
   It directly links an Application System to the final aggregated MicroService
   hiding the reifying MicroServicePart
-}
microServicePart : Linkage ApplicationSystem MicroService
microServicePart = membershipOfMicroServicePart  ∘  aggregationOfMicroServiceMicroServicePart
