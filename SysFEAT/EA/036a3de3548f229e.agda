{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Enterprise Initiative: 
An Enterprise Initiative is a past, current or future state of the enterprise. Each stage represents an initiative comprising a purposeful set of activities whose primary purpose is focused on achieving a set of clearly defined objectives that may transcend organisational boundaries and consequently require integrated team working under the direction of an Architecture Governance Committee.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.036a3de3548f229e where -- ========== Enterprise Initiative

open import Agda.Primitive
open import SysFEAT.SOF.0ffeec41600be08a public -- Initiative
open import SysFEAT.EA.203b8fdb5a5f43dd public -- Concept Domain Map
open import SysFEAT.EA.25c0a25061e2fd5a public -- Software System Environment
open import SysFEAT.EA.7c4097c855271c8e public -- Conceptual Environment
open import SysFEAT.EA.c189f8c868ae5b73 public -- Business Capability Map
open import SysFEAT.EA.fe1c250d678803b6 public -- Individual Resource Behavior
open import SysFEAT.EA.21ed240a689c08df public -- Value Proposition
open import SysFEAT.EA.56ea5ff966047632 public -- Product

EnterpriseInitiative : ClassOfBoundedIndividual
EnterpriseInitiative = BoundedIndividual

--  EnterpriseInitiative is subTypeOf Initiative
st-18a827fa5eeb6ed2 : EnterpriseInitiative ⊏ₑ Initiative
st-18a827fa5eeb6ed2 = polySubTypeOf-identity

-- == Relationships =======================

{- Enterprise Concept Map: 
Top level concept map of the enterprise or of one its transformation stages.
-}
enterpriseConceptMap :  Linkage EnterpriseInitiative ConceptDomainMap
enterpriseConceptMap = make_Relation "Enterprise Concept Map" "enterpriseConceptMap"


{- Enterprise IT Ecosystem: 
Software System Environment of the enterprise or of one of its transformation stage.
-}
enterpriseITEcosystem :  Linkage EnterpriseInitiative SOftwareSystemEnvironment
enterpriseITEcosystem = make_Relation "Enterprise IT Ecosystem" "enterpriseITEcosystem"


{- Enterprise Conceptual Environment: 
Conceptual Environment of the enterprise or of one of its transformation stages.This Conceptual Environment defines the enterprise Conceptual Environments ()
-}
enterpriseConceptualEnvironment :  Linkage EnterpriseInitiative ConceptualEnvironment
enterpriseConceptualEnvironment = make_Relation "Enterprise Conceptual Environment" "enterpriseConceptualEnvironment"


{- Enterprise Capability Map: -}
enterpriseCapabilityMap :  Linkage EnterpriseInitiative BusinessCapabilityMap
enterpriseCapabilityMap = make_instanceOf "Enterprise Capability Map" "enterpriseCapabilityMap"

postulate -- enterpriseCapabilityMap is subTypeOf functionalScope
  st-c189f8fd68ae5ba0-01f1214c689b6e0f  : enterpriseCapabilityMap   ⊏⋆ᵣ  functionalScope 

{- Enterprise Course of Action: 
A plan recognized by an enterprise as being essential to achieving its goals - i.e. a strategic specification of what the enterprise does. In other words, a Course of Action channels efforts towards Desired Results.Business Capabilities might be required by an Enterprise to conduct its Courses of Action.
-}
-- Aggregate Member : Enterprise Course of Action
EnterpriseCourseOfAction : ClassOfOrderedEntity (lsuc(lzero))
EnterpriseCourseOfAction = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfEnterpriseCourseOfAction :  Linkage EnterpriseInitiative EnterpriseCourseOfAction
membershipOfEnterpriseCourseOfAction = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualResourceBehaviorEnterpriseCourseOfAction :  Linkage EnterpriseCourseOfAction IndividualResourceBehavior
aggregationOfIndividualResourceBehaviorEnterpriseCourseOfAction = aggregationOfBuildingBlock

{- enterpriseCourseOfAction : derived relation obtained by composing
   membershipOfEnterpriseCourseOfAction and aggregationOfIndividualResourceBehaviorEnterpriseCourseOfAction
   It directly links an Enterprise Initiative to the final aggregated IndividualResourceBehavior
   hiding the reifying EnterpriseCourseOfAction
-}
enterpriseCourseOfAction : Linkage EnterpriseInitiative IndividualResourceBehavior
enterpriseCourseOfAction = membershipOfEnterpriseCourseOfAction  ∘  aggregationOfIndividualResourceBehaviorEnterpriseCourseOfAction

{- Enterprise Desired Result: -}
-- Aggregate Member : Enterprise Desired Result
EnterpriseDesiredResult : ClassOfClassOfIndividual
EnterpriseDesiredResult = ClassOfIndividual

-- Membership relation
membershipOfEnterpriseDesiredResult :  Linkage EnterpriseInitiative EnterpriseDesiredResult
membershipOfEnterpriseDesiredResult = membershipOfAggregateMember

-- Aggregation relation
aggregationOfValuePropositionEnterpriseDesiredResult :  Linkage EnterpriseDesiredResult ValueProposition
aggregationOfValuePropositionEnterpriseDesiredResult = aggregationOfBuildingBlock

{- enterpriseDesiredResult : derived relation obtained by composing
   membershipOfEnterpriseDesiredResult and aggregationOfValuePropositionEnterpriseDesiredResult
   It directly links an Enterprise Initiative to the final aggregated ValueProposition
   hiding the reifying EnterpriseDesiredResult
-}
enterpriseDesiredResult : Linkage EnterpriseInitiative ValueProposition
enterpriseDesiredResult = membershipOfEnterpriseDesiredResult  ∘  aggregationOfValuePropositionEnterpriseDesiredResult

{- Product: -}
-- Aggregate Member : Product
Product : ClassOfClassOfIndividual
Product = ClassOfIndividual

-- Membership relation
membershipOfProduct :  Linkage EnterpriseInitiative Product
membershipOfProduct = membershipOfAggregateMember

-- Aggregation relation
aggregationOfProductProduct :  Linkage Product Product
aggregationOfProductProduct = aggregationOfBuildingBlock

{- product : derived relation obtained by composing
   membershipOfProduct and aggregationOfProductProduct
   It directly links an Enterprise Initiative to the final aggregated Product
   hiding the reifying Product
-}
product : Linkage EnterpriseInitiative Product
product = membershipOfProduct  ∘  aggregationOfProductProduct
