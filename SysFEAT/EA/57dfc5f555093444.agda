{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Value Stream: 
Value Streams are used to frame the Conceptual Operating Model of the enterprise: they describe how the enterprise shall operate, at the conceptual level, and helps chunking responsibilities between Conceptual Agents (Operating Domain or Business Function) .In the EA context, a Value Stream is a conceptual Action Process Type that represents an overarching perspective of the organizations processes aiming at producing Conceptual Outcome Events. The focus is on shaping and understanding the functional relationships and roles within the enterprise : its functional division of labor. This is not to be confused with Value Stream Mapping (VSM) which is focused on Lean optimization and is addressed with the concept of  Business Process (see the Organization &amp; Processes domain).A Value Stream is performed by Conceptual Agents who produce Conceptual Outcome Events. It is depicted as a sequence of Value Stream Stages, controlled by events and conditions.Value Stream Activitys are carried out by the involvment of Conceptual Agents as participants in the Value Stream.During its course of action, a Value Stream consumes, produces or stores Business Objects.1) It may read or write Conceptual Entity Assets in its Business Object Store.2) It may receive Conceptual Entity Assets at its boundary:  reacted to Business Outcome Events.3) It may produce Conceptual Entity Assets at its boundary:  produced Business Outcome Events.The course of actions of a Value Stream is constrained by the application of rules (Conceptual Rule Enforcement) that define what is allowed and not allowed to do.There are traditionnaly two kinds of Value Streams:1) Development development Value Streams define all of the actions, both value-creating and nonvalue-creating, required to bring a Product from concept to launch.2)  Operational Value Streams define define all of the actions, both value-creating and nonvalue-creating, required from order to delivery. These include actions to process information from the Customer and actions to transform the product on its way to the Customer.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.57dfc5f555093444 where -- ========== Value Stream

open import Agda.Primitive
open import SysFEAT.EA.f97e3119632b25f8 public -- Conceptual Behavior
open import SysFEAT.SOF.d682ef5e56144e77 public -- Action Process Type
open import SysFEAT.EA.21916383678642d1 public -- Conceptual Outcome Event
open import SysFEAT.EA.dd268f2868a08150 public -- Business Capability
open import SysFEAT.EA.7c40987055271d04 public -- Conceptual Agent
open import SysFEAT.EA.7c4094d2552717db public -- Business Function
open import SysFEAT.EA.203b8ff05a5f43fe public -- Concept Domain

ValueStream : ClassOfClassOfBoundedIndividual
ValueStream = ClassOfBoundedIndividual

postulate --  ValueStream is subTypeOf ConceptualBehavior
  st-f97e3c7f632b30d6 : ValueStream ⊏ₑ ConceptualBehavior

postulate --  ValueStream is subTypeOf ActionProcessType
  st-21919d4d678660cd : ValueStream ⊏ₑ ActionProcessType

-- == Relationships =======================

{- Specialized Value Stream: -}
specializedValueStream :  Linkage ValueStream ValueStream
specializedValueStream = make_subTypeOf "Specialized Value Stream" "specializedValueStream"

postulate -- specializedValueStream is subTypeOf specializedConceptualAsset
  st-325a376d66f34577-325a376066f34181  : specializedValueStream   ⊏⋆ᵣ  specializedConceptualAsset 
postulate -- specializedValueStream is subTypeOf specializedProcess
  st-325a376d66f34577-325a376e66f345e2  : specializedValueStream   ⊏⋆ᵣ  specializedProcess 

{- Value Stream Flow: 
Flow of resource or information between stages of a Value Stream.
-}
-- Aggregate Member : Value Stream Flow
ValueStreamFlow : ClassOfClassOfIndividual
ValueStreamFlow = ClassOfIndividual

-- Membership relation
membershipOfValueStreamFlow :  Linkage ValueStream ValueStreamFlow
membershipOfValueStreamFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualOutcomeEventValueStreamFlow :  Linkage ValueStreamFlow ConceptualOutcomeEvent
aggregationOfConceptualOutcomeEventValueStreamFlow = aggregationOfBuildingBlock

{- valueStreamFlow : derived relation obtained by composing
   membershipOfValueStreamFlow and aggregationOfConceptualOutcomeEventValueStreamFlow
   It directly links an Value Stream to the final aggregated ConceptualOutcomeEvent
   hiding the reifying ValueStreamFlow
-}
valueStreamFlow : Linkage ValueStream ConceptualOutcomeEvent
valueStreamFlow = membershipOfValueStreamFlow  ∘  aggregationOfConceptualOutcomeEventValueStreamFlow

{- Required Capability: -}
-- Aggregate Member : Required Capability
RequiredCapability : ClassOfClassOfIndividual
RequiredCapability = ClassOfIndividual

-- Membership relation
membershipOfRequiredCapability :  Linkage ValueStream RequiredCapability
membershipOfRequiredCapability = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessCapabilityRequiredCapability :  Linkage RequiredCapability BusinessCapability
aggregationOfBusinessCapabilityRequiredCapability = aggregationOfBuildingBlock

{- requiredCapability : derived relation obtained by composing
   membershipOfRequiredCapability and aggregationOfBusinessCapabilityRequiredCapability
   It directly links an Value Stream to the final aggregated BusinessCapability
   hiding the reifying RequiredCapability
-}
requiredCapability : Linkage ValueStream BusinessCapability
requiredCapability = membershipOfRequiredCapability  ∘  aggregationOfBusinessCapabilityRequiredCapability

{- Activity Domain Participant: 
Participation of a Operating Domain in a Value Stream.
-}
-- Aggregate Member : Activity Domain Participant
ActivityDomainParticipant : ClassOfClassOfIndividual
ActivityDomainParticipant = ClassOfIndividual

-- Membership relation
membershipOfActivityDomainParticipant :  Linkage ValueStream ActivityDomainParticipant
membershipOfActivityDomainParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualAgentActivityDomainParticipant :  Linkage ActivityDomainParticipant ConceptualAgent
aggregationOfConceptualAgentActivityDomainParticipant = aggregationOfBuildingBlock

{- activityDomainParticipant : derived relation obtained by composing
   membershipOfActivityDomainParticipant and aggregationOfConceptualAgentActivityDomainParticipant
   It directly links an Value Stream to the final aggregated ConceptualAgent
   hiding the reifying ActivityDomainParticipant
-}
activityDomainParticipant : Linkage ValueStream ConceptualAgent
activityDomainParticipant = membershipOfActivityDomainParticipant  ∘  aggregationOfConceptualAgentActivityDomainParticipant

{- Value Stream Stage: 
Involvment of a Value Stream as a step of a parent Value Stream.
-}
-- Aggregate Member : Value Stream Stage
ValueStreamStage : ClassOfClassOfIndividual
ValueStreamStage = ClassOfIndividual

-- Membership relation
membershipOfValueStreamStage :  Linkage ValueStream ValueStreamStage
membershipOfValueStreamStage = membershipOfAggregateMember

-- Aggregation relation
aggregationOfValueStreamValueStreamStage :  Linkage ValueStreamStage ValueStream
aggregationOfValueStreamValueStreamStage = aggregationOfBuildingBlock

{- valueStreamStage : derived relation obtained by composing
   membershipOfValueStreamStage and aggregationOfValueStreamValueStreamStage
   It directly links an Value Stream to the final aggregated ValueStream
   hiding the reifying ValueStreamStage
-}
valueStreamStage : Linkage ValueStream ValueStream
valueStreamStage = membershipOfValueStreamStage  ∘  aggregationOfValueStreamValueStreamStage

{- Business Function Participant: 
Participation of a Business Function in a Value Stream.
-}
-- Aggregate Member : Business Function Participant
BusinessFunctionParticipant : ClassOfClassOfIndividual
BusinessFunctionParticipant = ClassOfIndividual

-- Membership relation
membershipOfBusinessFunctionParticipant :  Linkage ValueStream BusinessFunctionParticipant
membershipOfBusinessFunctionParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessFunctionBusinessFunctionParticipant :  Linkage BusinessFunctionParticipant BusinessFunction
aggregationOfBusinessFunctionBusinessFunctionParticipant = aggregationOfBuildingBlock

{- businessFunctionParticipant : derived relation obtained by composing
   membershipOfBusinessFunctionParticipant and aggregationOfBusinessFunctionBusinessFunctionParticipant
   It directly links an Value Stream to the final aggregated BusinessFunction
   hiding the reifying BusinessFunctionParticipant
-}
businessFunctionParticipant : Linkage ValueStream BusinessFunction
businessFunctionParticipant = membershipOfBusinessFunctionParticipant  ∘  aggregationOfBusinessFunctionBusinessFunctionParticipant

{- Business Object Store: 
Store of Business Objects that the Value Stream requires for the executing of its activities.
-}
-- Aggregate Member : Business Object Store
BusinessObjectStore : ClassOfClassOfIndividual
BusinessObjectStore = ClassOfIndividual

-- Membership relation
membershipOfBusinessObjectStore :  Linkage ValueStream BusinessObjectStore
membershipOfBusinessObjectStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptDomainBusinessObjectStore :  Linkage BusinessObjectStore ConceptDomain
aggregationOfConceptDomainBusinessObjectStore = aggregationOfBuildingBlock

{- businessObjectStore : derived relation obtained by composing
   membershipOfBusinessObjectStore and aggregationOfConceptDomainBusinessObjectStore
   It directly links an Value Stream to the final aggregated ConceptDomain
   hiding the reifying BusinessObjectStore
-}
businessObjectStore : Linkage ValueStream ConceptDomain
businessObjectStore = membershipOfBusinessObjectStore  ∘  aggregationOfConceptDomainBusinessObjectStore
