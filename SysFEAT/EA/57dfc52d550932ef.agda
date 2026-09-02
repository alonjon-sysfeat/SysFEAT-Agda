{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Process: 
A Business Process is a set of Business-Process Steps performed by Org-Unit Types and/or by automated systems (Business Systems) to produce a Business Outcome Event. It is depicted as a series of Business-Process Steps, controlled by Business Events and conditions. Business-Process Steps are carried out by the involvment of Org-Unit Types and system resources (often Applications) as participants in the process (Participant Business Agents).During its course of action, a Business Process consumes or produces Business Objects.1) It may memorize or access Business Objects from its Process Store.2) It may receive Business Objects at its boundary: Business Outcome Consumption.3) It may signal the production of Business Objects at its boundary: Business Outcome Production.The course of actions of a Business Process is constrained by the application of rules (Business Rule Enforcement) that define how to react to what is allowed and not allowed to do,
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.57dfc52d550932ef where -- ========== Business Process

open import Agda.Primitive
open import SysFEAT.EA.7c40c3c85527466b public -- Business Resource Process
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event
open import SysFEAT.EA.0185cc626221bb37 public -- Business Event
open import SysFEAT.EA.c189cf1f68ae421a public -- Business Rule
open import SysFEAT.EA.dd26aa0568a1f939 public -- Functionality
open import SysFEAT.EA.325c32165eb02a4a public -- Data Domain
open import SysFEAT.EA.bcebd8e9549144db public -- Application
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.f160fb6267d72652 public -- Mezzo Business System

BusinessProcess : ClassOfClassOfBoundedIndividual
BusinessProcess = ClassOfBoundedIndividual

--  BusinessProcess is subTypeOf BusinessResourceProcess
st-57dfc5385509332a : BusinessProcess ⊏ₑ BusinessResourceProcess
st-57dfc5385509332a = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Process: -}
specializedBusinessProcess :  Linkage BusinessProcess BusinessProcess
specializedBusinessProcess = make_subTypeOf "Specialized Business Process" "specializedBusinessProcess"

postulate -- specializedBusinessProcess is subTypeOf specializedResourceProcess
  st-325a37b866f34d47-325a376666f34350  : specializedBusinessProcess   ⊏⋆ᵣ  specializedResourceProcess 

{- Object Flow: 
Information flow between process activities.
-}
-- Aggregate Member : Object Flow
ObjectFlow : ClassOfClassOfIndividual
ObjectFlow = ClassOfIndividual

-- Membership relation
membershipOfObjectFlow :  Linkage BusinessProcess ObjectFlow
membershipOfObjectFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessOutcomeEventObjectFlow :  Linkage ObjectFlow BusinessOutcomeEvent
aggregationOfBusinessOutcomeEventObjectFlow = aggregationOfBuildingBlock

{- objectFlow : derived relation obtained by composing
   membershipOfObjectFlow and aggregationOfBusinessOutcomeEventObjectFlow
   It directly links an Business Process to the final aggregated BusinessOutcomeEvent
   hiding the reifying ObjectFlow
-}
objectFlow : Linkage BusinessProcess BusinessOutcomeEvent
objectFlow = membershipOfObjectFlow  ∘  aggregationOfBusinessOutcomeEventObjectFlow

{- Operation Sequence: 
An Operation Sequence is used to show the order in which steps of a process will be performed. Each Operation Sequence has only one source and only one target. 
-}
-- Aggregate Member : Operation Sequence
OperationSequence : ClassOfClassOfIndividual
OperationSequence = ClassOfIndividual

-- Membership relation
membershipOfOperationSequence :  Linkage BusinessProcess OperationSequence
membershipOfOperationSequence = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessEventOperationSequence :  Linkage OperationSequence BusinessEvent
aggregationOfBusinessEventOperationSequence = aggregationOfBuildingBlock

{- operationSequence : derived relation obtained by composing
   membershipOfOperationSequence and aggregationOfBusinessEventOperationSequence
   It directly links an Business Process to the final aggregated BusinessEvent
   hiding the reifying OperationSequence
-}
operationSequence : Linkage BusinessProcess BusinessEvent
operationSequence = membershipOfOperationSequence  ∘  aggregationOfBusinessEventOperationSequence

{- Business Rule Enforcement: -}
-- Aggregate Member : Business Rule Enforcement
BusinessRuleEnforcement : ClassOfClassOfIndividual
BusinessRuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfBusinessRuleEnforcement :  Linkage BusinessProcess BusinessRuleEnforcement
membershipOfBusinessRuleEnforcement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessRuleBusinessRuleEnforcement :  Linkage BusinessRuleEnforcement BusinessRule
aggregationOfBusinessRuleBusinessRuleEnforcement = aggregationOfBuildingBlock

{- businessRuleEnforcement : derived relation obtained by composing
   membershipOfBusinessRuleEnforcement and aggregationOfBusinessRuleBusinessRuleEnforcement
   It directly links an Business Process to the final aggregated BusinessRule
   hiding the reifying BusinessRuleEnforcement
-}
businessRuleEnforcement : Linkage BusinessProcess BusinessRule
businessRuleEnforcement = membershipOfBusinessRuleEnforcement  ∘  aggregationOfBusinessRuleBusinessRuleEnforcement

{- Required functionality: 
Functionality required during the course of a Business Process.
-}
-- Aggregate Member : Required functionality
Requiredfunctionality : ClassOfClassOfIndividual
Requiredfunctionality = ClassOfIndividual

-- Membership relation
membershipOfRequiredfunctionality :  Linkage BusinessProcess Requiredfunctionality
membershipOfRequiredfunctionality = membershipOfAggregateMember

-- Aggregation relation
aggregationOfFunctionalityRequiredfunctionality :  Linkage Requiredfunctionality Functionality
aggregationOfFunctionalityRequiredfunctionality = aggregationOfBuildingBlock

{- requiredfunctionality : derived relation obtained by composing
   membershipOfRequiredfunctionality and aggregationOfFunctionalityRequiredfunctionality
   It directly links an Business Process to the final aggregated Functionality
   hiding the reifying Requiredfunctionality
-}
requiredfunctionality : Linkage BusinessProcess Functionality
requiredfunctionality = membershipOfRequiredfunctionality  ∘  aggregationOfFunctionalityRequiredfunctionality

{- Business Object Store: 
A Business Object Store is a source of information required during the course of a Business Process.
-}
-- Aggregate Member : Business Object Store
BusinessObjectStore : ClassOfClassOfIndividual
BusinessObjectStore = ClassOfIndividual

-- Membership relation
membershipOfBusinessObjectStore :  Linkage BusinessProcess BusinessObjectStore
membershipOfBusinessObjectStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataDomainBusinessObjectStore :  Linkage BusinessObjectStore DataDomain
aggregationOfDataDomainBusinessObjectStore = aggregationOfBuildingBlock

{- businessObjectStore : derived relation obtained by composing
   membershipOfBusinessObjectStore and aggregationOfDataDomainBusinessObjectStore
   It directly links an Business Process to the final aggregated DataDomain
   hiding the reifying BusinessObjectStore
-}
businessObjectStore : Linkage BusinessProcess DataDomain
businessObjectStore = membershipOfBusinessObjectStore  ∘  aggregationOfDataDomainBusinessObjectStore

{- Automated Participant: 
An Automated Participant is the role of an Application that acts as an active performer in a Business Process, 
-}
-- Aggregate Member : Automated Participant
AutomatedParticipant : ClassOfClassOfIndividual
AutomatedParticipant = ClassOfIndividual

-- Membership relation
membershipOfAutomatedParticipant :  Linkage BusinessProcess AutomatedParticipant
membershipOfAutomatedParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationAutomatedParticipant :  Linkage AutomatedParticipant Application
aggregationOfApplicationAutomatedParticipant = aggregationOfBuildingBlock

{- automatedParticipant : derived relation obtained by composing
   membershipOfAutomatedParticipant and aggregationOfApplicationAutomatedParticipant
   It directly links an Business Process to the final aggregated Application
   hiding the reifying AutomatedParticipant
-}
automatedParticipant : Linkage BusinessProcess Application
automatedParticipant = membershipOfAutomatedParticipant  ∘  aggregationOfApplicationAutomatedParticipant

{- Human Resource Participant: 
A Human Resource Participant is the role of an Org-Unit Type that acts as an active performer in a Business Process. 
-}
-- Aggregate Member : Human Resource Participant
HumanResourceParticipant : ClassOfClassOfIndividual
HumanResourceParticipant = ClassOfIndividual

-- Membership relation
membershipOfHumanResourceParticipant :  Linkage BusinessProcess HumanResourceParticipant
membershipOfHumanResourceParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrgUnitTypeHumanResourceParticipant :  Linkage HumanResourceParticipant OrgUnitType
aggregationOfOrgUnitTypeHumanResourceParticipant = aggregationOfBuildingBlock

{- humanResourceParticipant : derived relation obtained by composing
   membershipOfHumanResourceParticipant and aggregationOfOrgUnitTypeHumanResourceParticipant
   It directly links an Business Process to the final aggregated OrgUnitType
   hiding the reifying HumanResourceParticipant
-}
humanResourceParticipant : Linkage BusinessProcess OrgUnitType
humanResourceParticipant = membershipOfHumanResourceParticipant  ∘  aggregationOfOrgUnitTypeHumanResourceParticipant

{- Instrument: 
An Instrument is a Business System used by a Human Resource Participant to perform an Activity in a Business Process. An Instrument can be an Application or a Hardware Equipment.
-}
-- Aggregate Member : Instrument
Instrument : ClassOfClassOfIndividual
Instrument = ClassOfIndividual

-- Membership relation
membershipOfInstrument :  Linkage BusinessProcess Instrument
membershipOfInstrument = membershipOfAggregateMember

-- Aggregation relation
aggregationOfMezzoBusinessSystemInstrument :  Linkage Instrument MezzoBusinessSystem
aggregationOfMezzoBusinessSystemInstrument = aggregationOfBuildingBlock

{- instrument : derived relation obtained by composing
   membershipOfInstrument and aggregationOfMezzoBusinessSystemInstrument
   It directly links an Business Process to the final aggregated MezzoBusinessSystem
   hiding the reifying Instrument
-}
instrument : Linkage BusinessProcess MezzoBusinessSystem
instrument = membershipOfInstrument  ∘  aggregationOfMezzoBusinessSystemInstrument

{- Business-Process Step: 
A Business-Process Step is a step in a Business Process executed by a participant of the proces (Human Resource Participant or Automated Participant).
-}
-- Aggregate Member : Business-Process Step
BusinessProcessStep : ClassOfClassOfIndividual
BusinessProcessStep = ClassOfIndividual

-- Membership relation
membershipOfBusinessProcessStep :  Linkage BusinessProcess BusinessProcessStep
membershipOfBusinessProcessStep = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessProcessBusinessProcessStep :  Linkage BusinessProcessStep BusinessProcess
aggregationOfBusinessProcessBusinessProcessStep = aggregationOfBuildingBlock

{- businessProcessStep : derived relation obtained by composing
   membershipOfBusinessProcessStep and aggregationOfBusinessProcessBusinessProcessStep
   It directly links an Business Process to the final aggregated BusinessProcess
   hiding the reifying BusinessProcessStep
-}
businessProcessStep : Linkage BusinessProcess BusinessProcess
businessProcessStep = membershipOfBusinessProcessStep  ∘  aggregationOfBusinessProcessBusinessProcessStep
