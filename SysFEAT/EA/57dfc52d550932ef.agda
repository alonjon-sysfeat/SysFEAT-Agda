{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Process: 
A Business Process is a set of Business-Process Steps performed by Org-Unit Types and/or by automated systems (Business Systems) to produce a Business Outcome Event. It is depicted as a series of Business-Process Steps, controlled by Business Events and conditions. Business-Process Steps are carried out by the involvment of Org-Unit Types and system resources (often Applications) as participants in the process (Participant Business Agents).During its course of action, a Business Process consumes or produces Business Objects.1) It may memorize or access Business Objects from its Process Store.2) It may receive Business Objects at its boundary: Business Outcome Consumption.3) It may signal the production of Business Objects at its boundary: Business Outcome Production.The course of actions of a Business Process is constrained by the application of rules (Business Rule Enforcement) that define how to react to what is allowed and not allowed to do,

Documentation : https://framework.sysfeat.com/pages/57dfc52d550932ef.htm

External references:
  OpenGroup - TOGAF 9 - Definition - Process: https://pubs.opengroup.org/architecture/togaf9-doc/m/apdxa.html#tag_47_48
  OpenGroup - TOGAF - Enterprise Metamodel Overview: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_01
  OpenGroup - OAA - Process: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_process
  ISO 9000 - 3.4.1 - Process: https://www.iso.org/obp/ui/#iso:std:iso:9000:ed-4:v1:en3.4.1.Process
  OMG - BPMN - Process: https://www.omg.org/spec/BPMN/2.0.2/PDF#page=173
  OMG - BMM - Business Process: https://www.omg.org/spec/BMM/1.3/PDF#page=64
  OMG - UAF - Function: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Function
  Lean.org - Value Stream: https://www.lean.org/lexicon-terms/value-stream/
  Lean.org - Value Stream Mapping: https://www.lean.org/lexicon-terms/value-stream-mapping/
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.57dfc52d550932ef where -- ========== Business Process

open import Agda.Primitive
open import SysFEAT.EA.7c40c3c85527466b public -- Business Resource Process
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event
open import SysFEAT.EA.0185cc626221bb37 public -- Business Event
open import SysFEAT.EA.325c32165eb02a4a public -- Data Domain
open import SysFEAT.EA.bcebd8e9549144db public -- Application
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type
open import SysFEAT.EA.f160fb6267d72652 public -- Mezzo Business System
open import SysFEAT.EA.c189cf1f68ae421a public -- Business Rule
open import SysFEAT.EA.dd26aa0568a1f939 public -- Functionality

BusinessProcess : ClassOfClassOfBoundedIndividual
BusinessProcess = ClassOfBoundedIndividual

--  BusinessProcess is subTypeOf BusinessResourceProcess
st-57dfc52d550932ef-7c40c3c85527466b : BusinessProcess ⊏ₑ BusinessResourceProcess
st-57dfc52d550932ef-7c40c3c85527466b = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Process: -}
specializedBusinessProcess :  Linkage BusinessProcess BusinessProcess
specializedBusinessProcess = make_subTypeOf "Specialized Business Process" "Specialized Business Process"

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
membershipOfObjectFlow = make_upwardNestingRelation "objectFlow membership" "nested objectFlow"

-- Aggregation relation
aggregationOfBusinessOutcomeEventObjectFlow :  Linkage ObjectFlow BusinessOutcomeEvent
aggregationOfBusinessOutcomeEventObjectFlow = make_Relation "BusinessOutcomeEvent aggregation" "aggregated BusinessOutcomeEvent"

{- objectFlow : derived relation obtained by composing
   membershipOfObjectFlow and aggregationOfBusinessOutcomeEventObjectFlow
   It directly links an Business Process to the final aggregated BusinessOutcomeEvent
   hiding the reifying ObjectFlow
-}
objectFlow : Linkage BusinessProcess BusinessOutcomeEvent
objectFlow = membershipOfObjectFlow  ∘  aggregationOfBusinessOutcomeEventObjectFlow

postulate -- objectFlow is subTypeOf resourceFlow
  st-302242b15ec9243a-4d120c1861b28997  : objectFlow   ⊏⋆ᵣ  resourceFlow 


{- Operation Sequence: 
An Operation Sequence is used to show the order in which steps of a process will be performed. Each Operation Sequence has only one source and only one target. 
-}
-- Aggregate Member : Operation Sequence
OperationSequence : ClassOfClassOfIndividual
OperationSequence = ClassOfIndividual

-- Membership relation
membershipOfOperationSequence :  Linkage BusinessProcess OperationSequence
membershipOfOperationSequence = make_upwardNestingRelation "operationSequence membership" "nested operationSequence"

-- Aggregation relation
aggregationOfBusinessEventOperationSequence :  Linkage OperationSequence BusinessEvent
aggregationOfBusinessEventOperationSequence = make_Relation "BusinessEvent aggregation" "aggregated BusinessEvent"

{- operationSequence : derived relation obtained by composing
   membershipOfOperationSequence and aggregationOfBusinessEventOperationSequence
   It directly links an Business Process to the final aggregated BusinessEvent
   hiding the reifying OperationSequence
-}
operationSequence : Linkage BusinessProcess BusinessEvent
operationSequence = membershipOfOperationSequence  ∘  aggregationOfBusinessEventOperationSequence

postulate -- operationSequence is subTypeOf resourceActivitySequence
  st-ca9de5ca5fcf4219-9d38a85a61c4245a  : operationSequence   ⊏⋆ᵣ  resourceActivitySequence 


{- Business Object Store: 
A Business Object Store is a source of information required during the course of a Business Process.
-}
-- Aggregate Member : Business Object Store
BusinessObjectStore : ClassOfClassOfIndividual
BusinessObjectStore = ClassOfIndividual

-- Membership relation
membershipOfBusinessObjectStore :  Linkage BusinessProcess BusinessObjectStore
membershipOfBusinessObjectStore = make_upwardNestingRelation "businessObjectStore membership" "nested businessObjectStore"

-- Aggregation relation
aggregationOfDataDomainBusinessObjectStore :  Linkage BusinessObjectStore DataDomain
aggregationOfDataDomainBusinessObjectStore = make_Relation "DataDomain aggregation" "aggregated DataDomain"

{- businessObjectStore : derived relation obtained by composing
   membershipOfBusinessObjectStore and aggregationOfDataDomainBusinessObjectStore
   It directly links an Business Process to the final aggregated DataDomain
   hiding the reifying BusinessObjectStore
-}
businessObjectStore : Linkage BusinessProcess DataDomain
businessObjectStore = membershipOfBusinessObjectStore  ∘  aggregationOfDataDomainBusinessObjectStore

postulate -- businessObjectStore is subTypeOf businessDataStore
  st-e4c0058d5ed1f424-b4ebd0e45ffdef12  : businessObjectStore   ⊏⋆ᵣ  businessDataStore 


{- Automated Participant: 
An Automated Participant is the role of an Application that acts as an active performer in a Business Process, 
-}
-- Aggregate Member : Automated Participant
AutomatedParticipant : ClassOfClassOfIndividual
AutomatedParticipant = ClassOfIndividual

-- Membership relation
membershipOfAutomatedParticipant :  Linkage BusinessProcess AutomatedParticipant
membershipOfAutomatedParticipant = make_upwardNestingRelation "automatedParticipant membership" "nested automatedParticipant"

-- Aggregation relation
aggregationOfApplicationAutomatedParticipant :  Linkage AutomatedParticipant Application
aggregationOfApplicationAutomatedParticipant = make_Relation "Application aggregation" "aggregated Application"

{- automatedParticipant : derived relation obtained by composing
   membershipOfAutomatedParticipant and aggregationOfApplicationAutomatedParticipant
   It directly links an Business Process to the final aggregated Application
   hiding the reifying AutomatedParticipant
-}
automatedParticipant : Linkage BusinessProcess Application
automatedParticipant = membershipOfAutomatedParticipant  ∘  aggregationOfApplicationAutomatedParticipant

postulate -- automatedParticipant is subTypeOf participantBusinessAgent
  st-0f92123f5ebc184e-b4ebbe325ffdca40  : automatedParticipant   ⊏⋆ᵣ  participantBusinessAgent 


{- Human Resource Participant: 
A Human Resource Participant is the role of an Org-Unit Type that acts as an active performer in a Business Process. 
-}
-- Aggregate Member : Human Resource Participant
HumanResourceParticipant : ClassOfClassOfIndividual
HumanResourceParticipant = ClassOfIndividual

-- Membership relation
membershipOfHumanResourceParticipant :  Linkage BusinessProcess HumanResourceParticipant
membershipOfHumanResourceParticipant = make_upwardNestingRelation "humanResourceParticipant membership" "nested humanResourceParticipant"

-- Aggregation relation
aggregationOfOrgUnitTypeHumanResourceParticipant :  Linkage HumanResourceParticipant OrgUnitType
aggregationOfOrgUnitTypeHumanResourceParticipant = make_Relation "OrgUnitType aggregation" "aggregated OrgUnitType"

{- humanResourceParticipant : derived relation obtained by composing
   membershipOfHumanResourceParticipant and aggregationOfOrgUnitTypeHumanResourceParticipant
   It directly links an Business Process to the final aggregated OrgUnitType
   hiding the reifying HumanResourceParticipant
-}
humanResourceParticipant : Linkage BusinessProcess OrgUnitType
humanResourceParticipant = membershipOfHumanResourceParticipant  ∘  aggregationOfOrgUnitTypeHumanResourceParticipant

postulate -- humanResourceParticipant is subTypeOf participantBusinessAgent
  st-0f9212805ebc1917-b4ebbe325ffdca40  : humanResourceParticipant   ⊏⋆ᵣ  participantBusinessAgent 


{- Instrument: 
An Instrument is a Business System used by a Human Resource Participant to perform an Activity in a Business Process. An Instrument can be an Application or a Hardware Equipment.
-}
-- Aggregate Member : Instrument
Instrument : ClassOfClassOfIndividual
Instrument = ClassOfIndividual

-- Membership relation
membershipOfInstrument :  Linkage BusinessProcess Instrument
membershipOfInstrument = make_upwardNestingRelation "instrument membership" "nested instrument"

-- Aggregation relation
aggregationOfMezzoBusinessSystemInstrument :  Linkage Instrument MezzoBusinessSystem
aggregationOfMezzoBusinessSystemInstrument = make_Relation "MezzoBusinessSystem aggregation" "aggregated MezzoBusinessSystem"

{- instrument : derived relation obtained by composing
   membershipOfInstrument and aggregationOfMezzoBusinessSystemInstrument
   It directly links an Business Process to the final aggregated MezzoBusinessSystem
   hiding the reifying Instrument
-}
instrument : Linkage BusinessProcess MezzoBusinessSystem
instrument = membershipOfInstrument  ∘  aggregationOfMezzoBusinessSystemInstrument

postulate -- instrument is subTypeOf resourceBehaviorParticipant
  st-0f9213345ebc1a67-e0e874626578a341  : instrument   ⊏⋆ᵣ  resourceBehaviorParticipant 


{- Business-Process Step: 
A Business-Process Step is a step in a Business Process executed by a participant of the proces (Human Resource Participant or Automated Participant).
-}
-- Aggregate Member : Business-Process Step
BusinessProcessStep : ClassOfClassOfIndividual
BusinessProcessStep = ClassOfIndividual

-- Membership relation
membershipOfBusinessProcessStep :  Linkage BusinessProcess BusinessProcessStep
membershipOfBusinessProcessStep = make_upwardNestingRelation "businessProcessStep membership" "nested businessProcessStep"

-- Aggregation relation
aggregationOfBusinessProcessBusinessProcessStep :  Linkage BusinessProcessStep BusinessProcess
aggregationOfBusinessProcessBusinessProcessStep = make_Relation "BusinessProcess aggregation" "aggregated BusinessProcess"

{- businessProcessStep : derived relation obtained by composing
   membershipOfBusinessProcessStep and aggregationOfBusinessProcessBusinessProcessStep
   It directly links an Business Process to the final aggregated BusinessProcess
   hiding the reifying BusinessProcessStep
-}
businessProcessStep : Linkage BusinessProcess BusinessProcess
businessProcessStep = membershipOfBusinessProcessStep  ∘  aggregationOfBusinessProcessBusinessProcessStep

postulate -- businessProcessStep is subTypeOf businessResourceProcessStep
  st-0f92150e5ebc1c50-b4ebbe6b5ffdcb19  : businessProcessStep   ⊏⋆ᵣ  businessResourceProcessStep 


{- Business Rule Enforcement: -}
-- Aggregate Member : Business Rule Enforcement
BusinessRuleEnforcement : ClassOfClassOfIndividual
BusinessRuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfBusinessRuleEnforcement :  Linkage BusinessProcess BusinessRuleEnforcement
membershipOfBusinessRuleEnforcement = make_upwardNestingRelation "businessRuleEnforcement membership" "nested businessRuleEnforcement"

-- Aggregation relation
aggregationOfBusinessRuleBusinessRuleEnforcement :  Linkage BusinessRuleEnforcement BusinessRule
aggregationOfBusinessRuleBusinessRuleEnforcement = make_Relation "BusinessRule aggregation" "aggregated BusinessRule"

{- businessRuleEnforcement : derived relation obtained by composing
   membershipOfBusinessRuleEnforcement and aggregationOfBusinessRuleBusinessRuleEnforcement
   It directly links an Business Process to the final aggregated BusinessRule
   hiding the reifying BusinessRuleEnforcement
-}
businessRuleEnforcement : Linkage BusinessProcess BusinessRule
businessRuleEnforcement = membershipOfBusinessRuleEnforcement  ∘  aggregationOfBusinessRuleBusinessRuleEnforcement

postulate -- businessRuleEnforcement is subTypeOf businessRuleEnforcement
  st-c189cfd768ae42d1-23bf9ad368ad2e64  : businessRuleEnforcement   ⊏⋆ᵣ  businessRuleEnforcement 


{- Required functionality: 
Functionality required during the course of a Business Process.
-}
-- Aggregate Member : Required functionality
Requiredfunctionality : ClassOfClassOfIndividual
Requiredfunctionality = ClassOfIndividual

-- Membership relation
membershipOfRequiredfunctionality :  Linkage BusinessProcess Requiredfunctionality
membershipOfRequiredfunctionality = make_upwardNestingRelation "requiredfunctionality membership" "nested requiredfunctionality"

-- Aggregation relation
aggregationOfFunctionalityRequiredfunctionality :  Linkage Requiredfunctionality Functionality
aggregationOfFunctionalityRequiredfunctionality = make_Relation "Functionality aggregation" "aggregated Functionality"

{- requiredfunctionality : derived relation obtained by composing
   membershipOfRequiredfunctionality and aggregationOfFunctionalityRequiredfunctionality
   It directly links an Business Process to the final aggregated Functionality
   hiding the reifying Requiredfunctionality
-}
requiredfunctionality : Linkage BusinessProcess Functionality
requiredfunctionality = membershipOfRequiredfunctionality  ∘  aggregationOfFunctionalityRequiredfunctionality


