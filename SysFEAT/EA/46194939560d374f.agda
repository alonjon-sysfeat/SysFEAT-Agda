{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System Process: 
A System Process is a Action Process Type that occurs inside Business Systems (software systems or hardware systems). Its performers can only be Business Software Systems or Concrete Hardware Systems.During its course of action, a System Process consumes or produces Data Assets:1) It may memorize or access Data Assets in its Process Store.2) It may receive Data Assets at its boundary: Consumed Outcome.3) It may signal the production of Data Assets at its boundary: Delivered Outcome.The course of actions of a System Process is constrained by the application of rules (System Rule Enforcement) that define what is allowed and not allowed to do.

Documentation : https://framework.sysfeat.com/pages/46194939560d374f.htm

External references:
  OpenGroup - ArchiMate - Application-Process: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-Application-Process
  OMG - BPMN - Process: https://www.omg.org/spec/BPMN/2.0.2/PDF#page=173
  OMG - UAF - Function: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Function
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.46194939560d374f where -- ========== System Process

open import Agda.Primitive
open import SysFEAT.EA.7c40c3c85527466b public -- Business Resource Process
open import SysFEAT.EA.6246927f61b81996 public -- Business System Asset
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.EA.302238be5ec9020a public -- Information Outcome Event
open import SysFEAT.EA.278675d65b252f4d public -- Business System
open import SysFEAT.EA.028f03ff5b4f55ee public -- Physical Data Domain

SystemProcess : ClassOfClassOfBoundedIndividual
SystemProcess = ClassOfBoundedIndividual

--  SystemProcess is subTypeOf BusinessResourceProcess
st-46194939560d374f-7c40c3c85527466b : SystemProcess ⊏ₑ BusinessResourceProcess
st-46194939560d374f-7c40c3c85527466b = polySubTypeOf-identity

--  SystemProcess is subTypeOf BusinessSystemAsset
st-46194939560d374f-6246927f61b81996 : SystemProcess ⊏ₑ BusinessSystemAsset
st-46194939560d374f-6246927f61b81996 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Sytem Process: -}
specializedSytemProcess :  Linkage SystemProcess SystemProcess
specializedSytemProcess = make_subTypeOf "Specialized Sytem Process" "Specialized Sytem Process"

postulate -- specializedSytemProcess is subTypeOf specializedBusinessSystemAsset
  st-325a37b766f34c76-325a37b966f34e1e  : specializedSytemProcess   ⊏⋆ᵣ  specializedBusinessSystemAsset 
postulate -- specializedSytemProcess is subTypeOf specializedResourceProcess
  st-325a37b766f34c76-325a376666f34350  : specializedSytemProcess   ⊏⋆ᵣ  specializedResourceProcess 

{- System Sequence: -}
-- Aggregate Member : System Sequence
SystemSequence : ClassOfClassOfIndividual
SystemSequence = ClassOfIndividual

-- Membership relation
membershipOfSystemSequence :  Linkage SystemProcess SystemSequence
membershipOfSystemSequence = make_upwardNestingRelation "systemSequence membership" "nested systemSequence"

-- Aggregation relation
aggregationOfBehavioralEventSystemSequence :  Linkage SystemSequence BehavioralEvent
aggregationOfBehavioralEventSystemSequence = make_Relation "BehavioralEvent aggregation" "aggregated BehavioralEvent"

{- systemSequence : derived relation obtained by composing
   membershipOfSystemSequence and aggregationOfBehavioralEventSystemSequence
   It directly links an System Process to the final aggregated BehavioralEvent
   hiding the reifying SystemSequence
-}
systemSequence : Linkage SystemProcess BehavioralEvent
systemSequence = membershipOfSystemSequence  ∘  aggregationOfBehavioralEventSystemSequence

postulate -- systemSequence is subTypeOf resourceActivitySequence
  st-9d38a80a61c42300-9d38a85a61c4245a  : systemSequence   ⊏⋆ᵣ  resourceActivitySequence 


{- System Flow: -}
-- Aggregate Member : System Flow
SystemFlow : ClassOfClassOfIndividual
SystemFlow = ClassOfIndividual

-- Membership relation
membershipOfSystemFlow :  Linkage SystemProcess SystemFlow
membershipOfSystemFlow = make_upwardNestingRelation "systemFlow membership" "nested systemFlow"

-- Aggregation relation
aggregationOfInformationOutcomeEventSystemFlow :  Linkage SystemFlow InformationOutcomeEvent
aggregationOfInformationOutcomeEventSystemFlow = make_Relation "InformationOutcomeEvent aggregation" "aggregated InformationOutcomeEvent"

{- systemFlow : derived relation obtained by composing
   membershipOfSystemFlow and aggregationOfInformationOutcomeEventSystemFlow
   It directly links an System Process to the final aggregated InformationOutcomeEvent
   hiding the reifying SystemFlow
-}
systemFlow : Linkage SystemProcess InformationOutcomeEvent
systemFlow = membershipOfSystemFlow  ∘  aggregationOfInformationOutcomeEventSystemFlow

postulate -- systemFlow is subTypeOf resourceFlow
  st-3e1fb6c05faab2ce-4d120c1861b28997  : systemFlow   ⊏⋆ᵣ  resourceFlow 


{- System Process Participant: 
A participant defines a partition of the actions of a process that will be assigned to a same agent.A participant can be decomposed into sub-partition to delegate responsibility for a subset of its actions.
-}
-- Aggregate Member : System Process Participant
SystemProcessParticipant : ClassOfClassOfIndividual
SystemProcessParticipant = ClassOfIndividual

-- Membership relation
membershipOfSystemProcessParticipant :  Linkage SystemProcess SystemProcessParticipant
membershipOfSystemProcessParticipant = make_upwardNestingRelation "systemProcessParticipant membership" "nested systemProcessParticipant"

-- Aggregation relation
aggregationOfBusinessSystemSystemProcessParticipant :  Linkage SystemProcessParticipant BusinessSystem
aggregationOfBusinessSystemSystemProcessParticipant = make_Relation "BusinessSystem aggregation" "aggregated BusinessSystem"

{- systemProcessParticipant : derived relation obtained by composing
   membershipOfSystemProcessParticipant and aggregationOfBusinessSystemSystemProcessParticipant
   It directly links an System Process to the final aggregated BusinessSystem
   hiding the reifying SystemProcessParticipant
-}
systemProcessParticipant : Linkage SystemProcess BusinessSystem
systemProcessParticipant = membershipOfSystemProcessParticipant  ∘  aggregationOfBusinessSystemSystemProcessParticipant

postulate -- systemProcessParticipant is subTypeOf participantBusinessAgent
  st-0c9b0d1b5ebd8260-b4ebbe325ffdca40  : systemProcessParticipant   ⊏⋆ᵣ  participantBusinessAgent 


{- System Process Step: 
Elementary step that is included within a system process. A task is used when the work in the system process is not broken down to a finer level of the process. Generally, an end-user and/or an IT service are used to perform the task when it is executed.
-}
-- Aggregate Member : System Process Step
SystemProcessStep : ClassOfClassOfIndividual
SystemProcessStep = ClassOfIndividual

-- Membership relation
membershipOfSystemProcessStep :  Linkage SystemProcess SystemProcessStep
membershipOfSystemProcessStep = make_upwardNestingRelation "systemProcessStep membership" "nested systemProcessStep"

-- Aggregation relation
aggregationOfSystemProcessSystemProcessStep :  Linkage SystemProcessStep SystemProcess
aggregationOfSystemProcessSystemProcessStep = make_Relation "SystemProcess aggregation" "aggregated SystemProcess"

{- systemProcessStep : derived relation obtained by composing
   membershipOfSystemProcessStep and aggregationOfSystemProcessSystemProcessStep
   It directly links an System Process to the final aggregated SystemProcess
   hiding the reifying SystemProcessStep
-}
systemProcessStep : Linkage SystemProcess SystemProcess
systemProcessStep = membershipOfSystemProcessStep  ∘  aggregationOfSystemProcessSystemProcessStep

postulate -- systemProcessStep is subTypeOf businessResourceProcessStep
  st-0c9b0d8c5ebd83f7-b4ebbe6b5ffdcb19  : systemProcessStep   ⊏⋆ᵣ  businessResourceProcessStep 


{- Data Store: -}
-- Aggregate Member : Data Store
DataStore : ClassOfClassOfIndividual
DataStore = ClassOfIndividual

-- Membership relation
membershipOfDataStore :  Linkage SystemProcess DataStore
membershipOfDataStore = make_upwardNestingRelation "dataStore membership" "nested dataStore"

-- Aggregation relation
aggregationOfPhysicalDataDomainDataStore :  Linkage DataStore PhysicalDataDomain
aggregationOfPhysicalDataDomainDataStore = make_Relation "PhysicalDataDomain aggregation" "aggregated PhysicalDataDomain"

{- dataStore : derived relation obtained by composing
   membershipOfDataStore and aggregationOfPhysicalDataDomainDataStore
   It directly links an System Process to the final aggregated PhysicalDataDomain
   hiding the reifying DataStore
-}
dataStore : Linkage SystemProcess PhysicalDataDomain
dataStore = membershipOfDataStore  ∘  aggregationOfPhysicalDataDomainDataStore

postulate -- dataStore is subTypeOf businessDataStore
  st-ca9de7d65fcf44b7-b4ebd0e45ffdef12  : dataStore   ⊏⋆ᵣ  businessDataStore 

