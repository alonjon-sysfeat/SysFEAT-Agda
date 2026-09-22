{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System: 
An Application System is a Business Software System which is an assembly of multiple Applications or other Application Systems that, together, fulfill a set of  Macro Functionality(ies) delivered to Business Operations.Application Systems are used in the context of IT Strategic planning to define and evolve other time the hight level structure of the enterprise IT Architecture.Application System is a Macro enterprise asset that sit at the top of Business Software System decomposition hierarchy.Example:  HR System  is an Application System whereas  Payroll  is an Application that is part of the  HR system .

Documentation : https://framework.sysfeat.com/pages/46194ca7560d3a45.htm

External references:
  OpenGroup - ArchiMate - Application-Collaboration: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-Application-Collaboration
  C4 Model - Supplementary diagrams - System Landscape diagram: https://c4model.com/#SystemLandscapeDiagram
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
st-46194ca7560d3a45-d6cd02865ab966e8 : ApplicationSystem ⊏ₑ BusinessSOftwareSystem
st-46194ca7560d3a45-d6cd02865ab966e8 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Application System Member: 
Role of an application system in a composition relationship that links it to a parent application system. 
-}
-- Aggregate Member : Application System Member
ApplicationSystemMember : ClassOfClassOfBoundedIndividual
ApplicationSystemMember = ClassOfBoundedIndividual



--  ApplicationSystemMember is subTypeOf SOftwarePart
st-02fe03b05eb9539c-173f4d015eb8c686 : ApplicationSystemMember ⊏ₑ SOftwarePart
st-02fe03b05eb9539c-173f4d015eb8c686 = polySubTypeOf-identity

--  ApplicationSystemMember is subTypeOf ApplicationSystem
st-02fe03b05eb9539c-46194ca7560d3a45 : ApplicationSystemMember ⊏ₑ ApplicationSystem
st-02fe03b05eb9539c-46194ca7560d3a45 = polySubTypeOf-identity

-- Membership relation
membershipOfApplicationSystemMember :  Linkage ApplicationSystem ApplicationSystemMember
membershipOfApplicationSystemMember = make_upwardNestingRelation "applicationSystemMember membership" "nested applicationSystemMember"

-- Aggregation relation
aggregationOfApplicationSystemApplicationSystemMember :  Linkage ApplicationSystemMember ApplicationSystem
aggregationOfApplicationSystemApplicationSystemMember = make_Relation "ApplicationSystem aggregation" "aggregated ApplicationSystem"

{- applicationSystemMember : derived relation obtained by composing
   membershipOfApplicationSystemMember and aggregationOfApplicationSystemApplicationSystemMember
   It directly links an Application System to the final aggregated ApplicationSystem
   hiding the reifying ApplicationSystemMember
-}
applicationSystemMember : Linkage ApplicationSystem ApplicationSystem
applicationSystemMember = membershipOfApplicationSystemMember  ∘  aggregationOfApplicationSystemApplicationSystemMember



-- -------------------------------------------------------------------------------------------- 
{- Application Part: 
Role of an application in a composition relationship that links it to a parent application or a parent application architecture. 
-}
-- Aggregate Member : Application Part
ApplicationPart : ClassOfClassOfBoundedIndividual
ApplicationPart = ClassOfBoundedIndividual



--  ApplicationPart is subTypeOf SOftwarePart
st-7b877c395eb813cf-173f4d015eb8c686 : ApplicationPart ⊏ₑ SOftwarePart
st-7b877c395eb813cf-173f4d015eb8c686 = polySubTypeOf-identity

--  ApplicationPart is subTypeOf Application
st-7b877c395eb813cf-bcebd8e9549144db : ApplicationPart ⊏ₑ Application
st-7b877c395eb813cf-bcebd8e9549144db = polySubTypeOf-identity

-- Membership relation
membershipOfApplicationPart :  Linkage ApplicationSystem ApplicationPart
membershipOfApplicationPart = make_upwardNestingRelation "applicationPart membership" "nested applicationPart"

-- Aggregation relation
aggregationOfApplicationApplicationPart :  Linkage ApplicationPart Application
aggregationOfApplicationApplicationPart = make_Relation "Application aggregation" "aggregated Application"

{- applicationPart : derived relation obtained by composing
   membershipOfApplicationPart and aggregationOfApplicationApplicationPart
   It directly links an Application System to the final aggregated Application
   hiding the reifying ApplicationPart
-}
applicationPart : Linkage ApplicationSystem Application
applicationPart = membershipOfApplicationPart  ∘  aggregationOfApplicationApplicationPart



-- -------------------------------------------------------------------------------------------- 
{- operator: 
Role of an organizational unit interacting at the boundary of an application architecture or a software service architecture. 
-}
-- Aggregate Member : operator
operator : ClassOfClassOfBoundedIndividual
operator = ClassOfBoundedIndividual



--  operator is subTypeOf OrgUnitType
st-7b877e095eb81a21-076d15425a5e158c : operator ⊏ₑ OrgUnitType
st-7b877e095eb81a21-076d15425a5e158c = polySubTypeOf-identity

-- Membership relation
membershipOfoperator :  Linkage ApplicationSystem operator
membershipOfoperator = make_upwardNestingRelation "operator membership" "nested operator"

-- Aggregation relation
aggregationOfOrgUnitTypeoperator :  Linkage operator OrgUnitType
aggregationOfOrgUnitTypeoperator = make_Relation "OrgUnitType aggregation" "aggregated OrgUnitType"

{- operator : derived relation obtained by composing
   membershipOfoperator and aggregationOfOrgUnitTypeoperator
   It directly links an Application System to the final aggregated OrgUnitType
   hiding the reifying operator
-}
operator : Linkage ApplicationSystem OrgUnitType
operator = membershipOfoperator  ∘  aggregationOfOrgUnitTypeoperator



-- -------------------------------------------------------------------------------------------- 
{- Performed Scenario: -}
-- Aggregate Member : Performed Scenario
PerformedScenario : ClassOfClassOfBoundedIndividual
PerformedScenario = ClassOfBoundedIndividual



--  PerformedScenario is subTypeOf PerformedSOftwareSystemScenario
st-e4c0e8515ed0678e-25c1b2d361e22368 : PerformedScenario ⊏ₑ PerformedSOftwareSystemScenario
st-e4c0e8515ed0678e-25c1b2d361e22368 = polySubTypeOf-identity

--  PerformedScenario is subTypeOf ApplicationSystemScenario
st-e4c0e8515ed0678e-e4c0e7285ed0625d : PerformedScenario ⊏ₑ ApplicationSystemScenario
st-e4c0e8515ed0678e-e4c0e7285ed0625d = polySubTypeOf-identity

-- Membership relation
membershipOfPerformedScenario :  Linkage ApplicationSystem PerformedScenario
membershipOfPerformedScenario = make_upwardNestingRelation "performedScenario membership" "nested performedScenario"

-- Aggregation relation
aggregationOfApplicationSystemScenarioPerformedScenario :  Linkage PerformedScenario ApplicationSystemScenario
aggregationOfApplicationSystemScenarioPerformedScenario = make_Relation "ApplicationSystemScenario aggregation" "aggregated ApplicationSystemScenario"

{- performedScenario : derived relation obtained by composing
   membershipOfPerformedScenario and aggregationOfApplicationSystemScenarioPerformedScenario
   It directly links an Application System to the final aggregated ApplicationSystemScenario
   hiding the reifying PerformedScenario
-}
performedScenario : Linkage ApplicationSystem ApplicationSystemScenario
performedScenario = membershipOfPerformedScenario  ∘  aggregationOfApplicationSystemScenarioPerformedScenario



-- -------------------------------------------------------------------------------------------- 
{- Micro-Service Part: 
A micro-service component represents the use of a micro-service in the structure of another software component (application, IT Service, micro-service) or in the environment of an application.
-}
-- Aggregate Member : Micro-Service Part
MicroServicePart : ClassOfClassOfBoundedIndividual
MicroServicePart = ClassOfBoundedIndividual



--  MicroServicePart is subTypeOf MicroService
st-8109fc685eb8c563-d6a956495a395d28 : MicroServicePart ⊏ₑ MicroService
st-8109fc685eb8c563-d6a956495a395d28 = polySubTypeOf-identity

-- Membership relation
membershipOfMicroServicePart :  Linkage ApplicationSystem MicroServicePart
membershipOfMicroServicePart = make_upwardNestingRelation "microServicePart membership" "nested microServicePart"

-- Aggregation relation
aggregationOfMicroServiceMicroServicePart :  Linkage MicroServicePart MicroService
aggregationOfMicroServiceMicroServicePart = make_Relation "MicroService aggregation" "aggregated MicroService"

{- microServicePart : derived relation obtained by composing
   membershipOfMicroServicePart and aggregationOfMicroServiceMicroServicePart
   It directly links an Application System to the final aggregated MicroService
   hiding the reifying MicroServicePart
-}
microServicePart : Linkage ApplicationSystem MicroService
microServicePart = membershipOfMicroServicePart  ∘  aggregationOfMicroServiceMicroServicePart


