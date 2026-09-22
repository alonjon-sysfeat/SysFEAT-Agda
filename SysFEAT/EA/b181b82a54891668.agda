{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Enterprise: 
An Enterprise is a macro Enduring Initiative that delivers added-value Products (goods &amp; services) to its target Customers.It requires a formal organization of groups of people and resources to achieve its purposes.

Documentation : https://framework.sysfeat.com/pages/b181b82a54891668.htm

External references:
  SAFe© - Enterprise: https://www.scaledagileframework.com/enterprise/
  OpenGroup - TOGAF - Definition - Enterprise: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_42
  WordNet - Enterprise: https://en-word.net/ili/i39592
  OMG - UAF - WholeLifeEnterprise: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#WholeLifeEnterprise
  SAFe© - Portfolio SAFe: https://www.scaledagileframework.com/portfolio-safe/
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.b181b82a54891668 where -- ========== Enterprise

open import Agda.Primitive
open import SysFEAT.EA.036a3de3548f229e public -- Enterprise Initiative
open import SysFEAT.SOF.299e882b68488d2c public -- Operational Transformation
open import SysFEAT.SOF.0eb95f1b6855bf64 public -- Architecture Container
open import SysFEAT.EA.9e38361d6192f8da public -- Infrastructure Landscape
open import SysFEAT.EA.29df3f4060084c07 public -- Management System
open import SysFEAT.EA.f4be4bb95ee18b51 public -- Physical Data Map
open import SysFEAT.EA.d6cd260b5ab9886c public -- Application System Environment
open import SysFEAT.EA.dd26f21668a0b0fd public -- Skill Map
open import SysFEAT.EA.e78cee446618815a public -- Legal Entity
open import SysFEAT.EA.fe1c250d678803b6 public -- Individual Resource Behavior
open import SysFEAT.EA.21ed240a689c08df public -- Value Proposition

Enterprise : ClassOfBoundedIndividual
Enterprise = BoundedIndividual


--  Enterprise is subTypeOf EnterpriseInitiative
st-b181b82a54891668-036a3de3548f229e : Enterprise ⊏ₑ EnterpriseInitiative
st-b181b82a54891668-036a3de3548f229e = polySubTypeOf-identity

--  Enterprise is subTypeOf OperationalTransformation
st-b181b82a54891668-299e882b68488d2c : Enterprise ⊏ₑ OperationalTransformation
st-b181b82a54891668-299e882b68488d2c = polySubTypeOf-identity

--  Enterprise withAspect ArchitectureContainer
st-b181b82a54891668-0eb95f1b6855bf64 : Enterprise ⊏ₐₑ (ArchitectureContainer lzero)
st-b181b82a54891668-0eb95f1b6855bf64 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Owned Landscape: -}
ownedLandscape :  Linkage Enterprise InfrastructureLandscape
ownedLandscape = make_holonymyRelation "Owned Landscape" "Owned Landscape"


-- -------------------------------------------------------------------------------------------- 
{- Enterprise Roadmap: -}
enterpriseRoadmap :  Linkage Enterprise EnterpriseInitiative
enterpriseRoadmap = make_holonymyRelation "Enterprise Roadmap" "Enterprise Roadmap"

postulate -- enterpriseRoadmap is subTypeOf roadmap
  st-d770dd345ef4c14f-29df685860086c52  : enterpriseRoadmap  ⊏⋆ᵣ  roadmap

-- -------------------------------------------------------------------------------------------- 
{- Coordinated Management System: 
Management System coordinated at the enterprise scale.
-}
coordinatedManagementSystem :  Linkage Enterprise ManagementSystem
coordinatedManagementSystem = make_holonymyRelation "Coordinated Management System" "Coordinated Management System"

postulate -- coordinatedManagementSystem is subTypeOf subInitiative
  st-a67ddf8d5f8ecf44-5b7a0ecf61f5650a  : coordinatedManagementSystem  ⊏⋆ᵣ  subInitiative

-- -------------------------------------------------------------------------------------------- 
{- Enterprise Data Map: -}
enterpriseDataMap :  Linkage Enterprise PhysicalDataMap
enterpriseDataMap = make_Relation "Enterprise Data Map" "Enterprise Data Map"


-- -------------------------------------------------------------------------------------------- 
{- Enterprise IT System Map: -}
enterpriseITSystemMap :  Linkage Enterprise ApplicationSystemEnvironment
enterpriseITSystemMap = make_Relation "Enterprise IT System Map" "Enterprise IT System Map"

postulate -- enterpriseITSystemMap is subTypeOf functionalScope
  st-82af91565ee335ec-01f1214c689b6e0f  : enterpriseITSystemMap  ⊏⋆ᵣ  functionalScope

-- -------------------------------------------------------------------------------------------- 
{- Enterprise Skill Map: 
Family of Skill of an Enterprise.
-}
enterpriseSkillMap :  Linkage Enterprise SkillMap
enterpriseSkillMap = make_instanceOf "Enterprise Skill Map" "Enterprise Skill Map"


-- -------------------------------------------------------------------------------------------- 
{- Legal Structure: -}
-- Aggregate Member : Legal Structure
LegalStructure : AgentType
LegalStructure = IndividualAgent



--  LegalStructure withAspect BoundedMember
st-a7ac82b45ff545ba-0eb999956855e070 : LegalStructure ⊏ₐₑ (BoundedMember lzero)
st-a7ac82b45ff545ba-0eb999956855e070 = polySubTypeOf-identity

--  LegalStructure withAspect SteeringAuthority
st-a7ac82b45ff545ba-b2f2d64d5f47e364 : LegalStructure ⊏ₐₑ (SteeringAuthority lzero)
st-a7ac82b45ff545ba-b2f2d64d5f47e364 = polySubTypeOf-identity

--  LegalStructure is subTypeOf LegalEntity
st-a7ac82b45ff545ba-e78cee446618815a : LegalStructure ⊏ₑ LegalEntity
st-a7ac82b45ff545ba-e78cee446618815a = polySubTypeOf-identity

-- Membership relation
membershipOfLegalStructure :  Linkage Enterprise LegalStructure
membershipOfLegalStructure = make_upwardNestingRelation "legalStructure membership" "nested legalStructure"

-- Aggregation relation
aggregationOfLegalEntityLegalStructure :  Linkage LegalStructure LegalEntity
aggregationOfLegalEntityLegalStructure = make_Relation "LegalEntity aggregation" "aggregated LegalEntity"

{- legalStructure : derived relation obtained by composing
   membershipOfLegalStructure and aggregationOfLegalEntityLegalStructure
   It directly links an Enterprise to the final aggregated LegalEntity
   hiding the reifying LegalStructure
-}
legalStructure : Linkage Enterprise LegalEntity
legalStructure = membershipOfLegalStructure  ∘  aggregationOfLegalEntityLegalStructure



-- -------------------------------------------------------------------------------------------- 
{- Strategy: 
 A Strategy is one component of the plan for the Mission. A Strategy represents the essential Course of Action to achieve Ends (Goals in particular). A Strategy usually channels efforts towards those Goals.A Strategy is more than simply a resource, skill, or competency that the enterprise can call upon; rather, a Strategy is accepted by the enterprise as the right approach to achieve its Goals, given the environmental constraints and risks.(From BMM).
-}
-- Aggregate Member : Strategy
Strategy : AggregateHolonymyType
Strategy = AggregateHolonymy



--  Strategy is subTypeOf EnterpriseCourseOfAction
st-dd26e09968a0a0b7-dd2696c768a1d406 : Strategy ⊏ₑ EnterpriseCourseOfAction
st-dd26e09968a0a0b7-dd2696c768a1d406 = polySubTypeOf-identity

--  Strategy is subTypeOf IndividualResourceBehavior
st-dd26e09968a0a0b7-fe1c250d678803b6 : Strategy ⊏ₑ IndividualResourceBehavior
st-dd26e09968a0a0b7-fe1c250d678803b6 = polySubTypeOf-identity

-- Membership relation
membershipOfStrategy :  Linkage Enterprise Strategy
membershipOfStrategy = make_upwardNestingRelation "strategy membership" "nested strategy"

-- Aggregation relation
aggregationOfIndividualResourceBehaviorStrategy :  Linkage Strategy IndividualResourceBehavior
aggregationOfIndividualResourceBehaviorStrategy = make_Relation "IndividualResourceBehavior aggregation" "aggregated IndividualResourceBehavior"

{- strategy : derived relation obtained by composing
   membershipOfStrategy and aggregationOfIndividualResourceBehaviorStrategy
   It directly links an Enterprise to the final aggregated IndividualResourceBehavior
   hiding the reifying Strategy
-}
strategy : Linkage Enterprise IndividualResourceBehavior
strategy = membershipOfStrategy  ∘  aggregationOfIndividualResourceBehaviorStrategy



-- -------------------------------------------------------------------------------------------- 
{- Enterprise Goal: 
An Enterprise Goal is an ideal target Value Proposition that tends to be longer term, and is defined qualitatively rather than quantitatively. It should be sufficiently  narrow-focused so that Objectives can be defined for it.
-}
-- Aggregate Member : Enterprise Goal
EnterpriseGoal : ClassOfClassOfIndividual
EnterpriseGoal = ClassOfIndividual


--  EnterpriseGoal is subTypeOf Goal
st-dd2685ea68a1c117-21eda43c689c2ab3 : EnterpriseGoal ⊏⋆ₑ Goal
st-dd2685ea68a1c117-21eda43c689c2ab3 = polySubTypeOf-identity

-- Membership relation
membershipOfEnterpriseGoal :  Linkage Enterprise EnterpriseGoal
membershipOfEnterpriseGoal = make_upwardNestingRelation "enterpriseGoal membership" "nested enterpriseGoal"

-- Aggregation relation
aggregationOfValuePropositionEnterpriseGoal :  Linkage EnterpriseGoal ValueProposition
aggregationOfValuePropositionEnterpriseGoal = make_Relation "ValueProposition aggregation" "aggregated ValueProposition"

{- enterpriseGoal : derived relation obtained by composing
   membershipOfEnterpriseGoal and aggregationOfValuePropositionEnterpriseGoal
   It directly links an Enterprise to the final aggregated ValueProposition
   hiding the reifying EnterpriseGoal
-}
enterpriseGoal : Linkage Enterprise ValueProposition
enterpriseGoal = membershipOfEnterpriseGoal  ∘  aggregationOfValuePropositionEnterpriseGoal


