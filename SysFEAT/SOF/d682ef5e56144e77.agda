{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Action Process Type: 
An Action Process Type is a Behavior Type that describes a typical course of action intended to produce Outcomes, through the involvement of Agent Types as Active Participants.During its course of action, a process consumes or produces Functional Assets, including Information Assets.1) It may memorize or access Information Assets from and to its Process Stores.2) It may receive Functional Assets at its boundary: Outcome Consumptions.3) It may signal the production of Functional Assets at its boundary: Outcome Productions.The course of actions of a Action Process Type is constrained (Rule Enforcement) by the application of Behavioral Rules that define what is allowed and not allowed to do.Within SysFEAT, we can examine Action Process Typees from two distinct perspectives:a) A conceptual standpoint is provided by Value Streams.b) A concrete implementation standpoint is provided by Resource Action Processes.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d682ef5e56144e77 where -- ========== Action Process Type

open import Agda.Primitive
open import SysFEAT.SOF.986cd4ec5ffca3ac public -- Behavior Type
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.SOF.30223b5c5ec90c01 public -- Outcome Event
open import SysFEAT.SOF.d6cd116d5ab97525 public -- Information Domain
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type

ActionProcessType : ClassOfClassOfBoundedIndividual
ActionProcessType = ClassOfBoundedIndividual

postulate --  ActionProcessType is subTypeOf BehaviorType
  st-a371a5c65b86606b : ActionProcessType ⊏ₑ BehaviorType

-- == Relationships =======================

{- Specialized Process: -}
specializedProcess :  Linkage ActionProcessType ActionProcessType
specializedProcess = make_subTypeOf "Specialized Process" "specializedProcess"

postulate -- specializedProcess is subTypeOf specializedBehavior
  st-325a376e66f345e2-2b5b452d66ed5855  : specializedProcess   ⊏⋆ᵣ  specializedBehavior 

{- Realized Proces: -}
realizedProces :  Linkage ActionProcessType ActionProcessType
realizedProces = make_subTypeOf "Realized Proces" "realizedProces"

postulate -- realizedProces is subTypeOf realizedBehavior
  st-325a3a1466f35b22-2b5b45a466ed5920  : realizedProces   ⊏⋆ᵣ  realizedBehavior 

{- Sequence Flow: 
A Sequence Flow is used to show the order in which steps of a process will be performed. Each sequence flow has only one source and only one target. 
-}
-- Aggregate Member : Sequence Flow
SequenceFlow : ClassOfClassOfIndividual
SequenceFlow = ClassOfIndividual

-- Membership relation
membershipOfSequenceFlow :  Linkage ActionProcessType SequenceFlow
membershipOfSequenceFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBehavioralEventSequenceFlow :  Linkage SequenceFlow BehavioralEvent
aggregationOfBehavioralEventSequenceFlow = aggregationOfBuildingBlock

{- sequenceFlow : derived relation obtained by composing
   membershipOfSequenceFlow and aggregationOfBehavioralEventSequenceFlow
   It directly links an Action Process Type to the final aggregated BehavioralEvent
   hiding the reifying SequenceFlow
-}
sequenceFlow : Linkage ActionProcessType BehavioralEvent
sequenceFlow = membershipOfSequenceFlow  ∘  aggregationOfBehavioralEventSequenceFlow

{- Object Flow: 
Object Flow is a Sequence Flow that convey from its source 
-}
-- Aggregate Member : Object Flow
ObjectFlow : ClassOfClassOfIndividual
ObjectFlow = ClassOfIndividual

-- Membership relation
membershipOfObjectFlow :  Linkage ActionProcessType ObjectFlow
membershipOfObjectFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOutcomeEventObjectFlow :  Linkage ObjectFlow OutcomeEvent
aggregationOfOutcomeEventObjectFlow = aggregationOfBuildingBlock

{- objectFlow : derived relation obtained by composing
   membershipOfObjectFlow and aggregationOfOutcomeEventObjectFlow
   It directly links an Action Process Type to the final aggregated OutcomeEvent
   hiding the reifying ObjectFlow
-}
objectFlow : Linkage ActionProcessType OutcomeEvent
objectFlow = membershipOfObjectFlow  ∘  aggregationOfOutcomeEventObjectFlow

{- Process Store: 
An Process Store references an Information Domain necessary for activities of the process.
-}
-- Aggregate Member : Process Store
ProcessStore : ClassOfClassOfIndividual
ProcessStore = ClassOfIndividual

-- Membership relation
membershipOfProcessStore :  Linkage ActionProcessType ProcessStore
membershipOfProcessStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationDomainProcessStore :  Linkage ProcessStore InformationDomain
aggregationOfInformationDomainProcessStore = aggregationOfBuildingBlock

{- processStore : derived relation obtained by composing
   membershipOfProcessStore and aggregationOfInformationDomainProcessStore
   It directly links an Action Process Type to the final aggregated InformationDomain
   hiding the reifying ProcessStore
-}
processStore : Linkage ActionProcessType InformationDomain
processStore = membershipOfProcessStore  ∘  aggregationOfInformationDomainProcessStore

{- Active Participant: 
An Active Participant is a Process Participant indicating the role of an Agent Type actively engaged as an actor within a Action Process Type.
-}
-- Aggregate Member : Active Participant
ActiveParticipant : ClassOfClassOfIndividual
ActiveParticipant = ClassOfIndividual

-- Membership relation
membershipOfActiveParticipant :  Linkage ActionProcessType ActiveParticipant
membershipOfActiveParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeActiveParticipant :  Linkage ActiveParticipant AgentType
aggregationOfAgentTypeActiveParticipant = aggregationOfBuildingBlock

{- activeParticipant : derived relation obtained by composing
   membershipOfActiveParticipant and aggregationOfAgentTypeActiveParticipant
   It directly links an Action Process Type to the final aggregated AgentType
   hiding the reifying ActiveParticipant
-}
activeParticipant : Linkage ActionProcessType AgentType
activeParticipant = membershipOfActiveParticipant  ∘  aggregationOfAgentTypeActiveParticipant

{- Process Participant: 
A Process Participant is the involvement of an in a .
-}
-- Aggregate Member : Process Participant
ProcessParticipant : ClassOfClassOfIndividual
ProcessParticipant = ClassOfIndividual

-- Membership relation
membershipOfProcessParticipant :  Linkage ActionProcessType ProcessParticipant
membershipOfProcessParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeProcessParticipant :  Linkage ProcessParticipant AgentType
aggregationOfAgentTypeProcessParticipant = aggregationOfBuildingBlock

{- processParticipant : derived relation obtained by composing
   membershipOfProcessParticipant and aggregationOfAgentTypeProcessParticipant
   It directly links an Action Process Type to the final aggregated AgentType
   hiding the reifying ProcessParticipant
-}
processParticipant : Linkage ActionProcessType AgentType
processParticipant = membershipOfProcessParticipant  ∘  aggregationOfAgentTypeProcessParticipant

{- Process Step: 
A Process Step is a Process Activity  invoking another Action Process Type
-}
-- Aggregate Member : Process Step
ProcessStep : ClassOfClassOfIndividual
ProcessStep = ClassOfIndividual

-- Membership relation
membershipOfProcessStep :  Linkage ActionProcessType ProcessStep
membershipOfProcessStep = membershipOfAggregateMember

-- Aggregation relation
aggregationOfActionProcessTypeProcessStep :  Linkage ProcessStep ActionProcessType
aggregationOfActionProcessTypeProcessStep = aggregationOfBuildingBlock

{- processStep : derived relation obtained by composing
   membershipOfProcessStep and aggregationOfActionProcessTypeProcessStep
   It directly links an Action Process Type to the final aggregated ActionProcessType
   hiding the reifying ProcessStep
-}
processStep : Linkage ActionProcessType ActionProcessType
processStep = membershipOfProcessStep  ∘  aggregationOfActionProcessTypeProcessStep
