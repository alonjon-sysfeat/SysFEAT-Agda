{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Action Process: 
A Resource Action Process is a Action Process Type that describes a typical course of action intended to produce and react to Resource Outcome Events, through the involvement of Resource Agent Types (Participant Resource Agent).During its course of action, a Resource Action Process consumes or produces Resource Assets.1) It may memorize or access Resource Assets to and from its Process Stores.2) It may receive Resource Assets at its boundary: Resource Outcome Consumptions.3) It may signal the production of Resource Assets at its boundary: Resource Outcome Productions.The course of actions of an Resource Action Process is constrained by the application of rules (Resource Rule Enforcement) that define what is allowed and not allowed to do.Within SysFEAT, we can examine Resource Action Processes from two distinct perspectives:a) An operations business perspective is offered by Business Processes.c) An automated viewpoint is provided by System Processes.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e2ef095b62147bf9 where -- ========== Resource Action Process

open import Agda.Primitive
open import SysFEAT.EA.0185cd936221bd72 public -- Resource Behavior
open import SysFEAT.SOF.d682ef5e56144e77 public -- Action Process Type
open import SysFEAT.EA.0185cc626221bb37 public -- Business Event
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type
open import SysFEAT.SOF.d6cd116d5ab97525 public -- Information Domain

ResourceActionProcess : ClassOfClassOfBoundedIndividual
ResourceActionProcess = ClassOfBoundedIndividual

postulate --  ResourceActionProcess is subTypeOf ResourceBehavior
  st-f8e623e2621dc7d0 : ResourceActionProcess ⊏ₑ ResourceBehavior

postulate --  ResourceActionProcess is subTypeOf ActionProcessType
  st-79707a05665941de : ResourceActionProcess ⊏ₑ ActionProcessType

-- == Relationships =======================

{- Specialized Resource Process: -}
specializedResourceProcess :  Linkage ResourceActionProcess ResourceActionProcess
specializedResourceProcess = make_subTypeOf "Specialized Resource Process" "specializedResourceProcess"

postulate -- specializedResourceProcess is subTypeOf specializedProcess
  st-325a39d966f353be-325a376e66f345e2  : specializedResourceProcess   ⊏⋆ᵣ  specializedProcess 
postulate -- specializedResourceProcess is subTypeOf specializedResourceBehavior
  st-325a39d966f353be-325a376866f343d3  : specializedResourceProcess   ⊏⋆ᵣ  specializedResourceBehavior 

{- Realized Operating Process: -}
realizedOperatingProcess :  Linkage ResourceActionProcess ResourceActionProcess
realizedOperatingProcess = make_subTypeOf "Realized Operating Process" "realizedOperatingProcess"

postulate -- realizedOperatingProcess is subTypeOf realizedProces
  st-325a3a1666f35c35-325a3a1466f35b22  : realizedOperatingProcess   ⊏⋆ᵣ  realizedProces 

{- Sequence Flow: -}
-- Aggregate Member : Sequence Flow
SequenceFlow : ClassOfClassOfIndividual
SequenceFlow = ClassOfIndividual

-- Membership relation
membershipOfSequenceFlow :  Linkage ResourceActionProcess SequenceFlow
membershipOfSequenceFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessEventSequenceFlow :  Linkage SequenceFlow BusinessEvent
aggregationOfBusinessEventSequenceFlow = aggregationOfBuildingBlock

{- sequenceFlow : derived relation obtained by composing
   membershipOfSequenceFlow and aggregationOfBusinessEventSequenceFlow
   It directly links an Resource Action Process to the final aggregated BusinessEvent
   hiding the reifying SequenceFlow
-}
sequenceFlow : Linkage ResourceActionProcess BusinessEvent
sequenceFlow = membershipOfSequenceFlow  ∘  aggregationOfBusinessEventSequenceFlow

{- Resource Object Flow: -}
-- Aggregate Member : Resource Object Flow
ResourceObjectFlow : ClassOfClassOfIndividual
ResourceObjectFlow = ClassOfIndividual

-- Membership relation
membershipOfResourceObjectFlow :  Linkage ResourceActionProcess ResourceObjectFlow
membershipOfResourceObjectFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceOutcomeEventResourceObjectFlow :  Linkage ResourceObjectFlow ResourceOutcomeEvent
aggregationOfResourceOutcomeEventResourceObjectFlow = aggregationOfBuildingBlock

{- resourceObjectFlow : derived relation obtained by composing
   membershipOfResourceObjectFlow and aggregationOfResourceOutcomeEventResourceObjectFlow
   It directly links an Resource Action Process to the final aggregated ResourceOutcomeEvent
   hiding the reifying ResourceObjectFlow
-}
resourceObjectFlow : Linkage ResourceActionProcess ResourceOutcomeEvent
resourceObjectFlow = membershipOfResourceObjectFlow  ∘  aggregationOfResourceOutcomeEventResourceObjectFlow

{- Participant Resource Agent: -}
-- Aggregate Member : Participant Resource Agent
ParticipantResourceAgent : ClassOfClassOfIndividual
ParticipantResourceAgent = ClassOfIndividual

-- Membership relation
membershipOfParticipantResourceAgent :  Linkage ResourceActionProcess ParticipantResourceAgent
membershipOfParticipantResourceAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypeParticipantResourceAgent :  Linkage ParticipantResourceAgent ResourceAgentType
aggregationOfResourceAgentTypeParticipantResourceAgent = aggregationOfBuildingBlock

{- participantResourceAgent : derived relation obtained by composing
   membershipOfParticipantResourceAgent and aggregationOfResourceAgentTypeParticipantResourceAgent
   It directly links an Resource Action Process to the final aggregated ResourceAgentType
   hiding the reifying ParticipantResourceAgent
-}
participantResourceAgent : Linkage ResourceActionProcess ResourceAgentType
participantResourceAgent = membershipOfParticipantResourceAgent  ∘  aggregationOfResourceAgentTypeParticipantResourceAgent

{- Resource Process Step: -}
-- Aggregate Member : Resource Process Step
ResourceProcessStep : ClassOfClassOfIndividual
ResourceProcessStep = ClassOfIndividual

-- Membership relation
membershipOfResourceProcessStep :  Linkage ResourceActionProcess ResourceProcessStep
membershipOfResourceProcessStep = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceActionProcessResourceProcessStep :  Linkage ResourceProcessStep ResourceActionProcess
aggregationOfResourceActionProcessResourceProcessStep = aggregationOfBuildingBlock

{- resourceProcessStep : derived relation obtained by composing
   membershipOfResourceProcessStep and aggregationOfResourceActionProcessResourceProcessStep
   It directly links an Resource Action Process to the final aggregated ResourceActionProcess
   hiding the reifying ResourceProcessStep
-}
resourceProcessStep : Linkage ResourceActionProcess ResourceActionProcess
resourceProcessStep = membershipOfResourceProcessStep  ∘  aggregationOfResourceActionProcessResourceProcessStep

{- Operating Process Store: -}
-- Aggregate Member : Operating Process Store
OperatingProcessStore : ClassOfClassOfIndividual
OperatingProcessStore = ClassOfIndividual

-- Membership relation
membershipOfOperatingProcessStore :  Linkage ResourceActionProcess OperatingProcessStore
membershipOfOperatingProcessStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationDomainOperatingProcessStore :  Linkage OperatingProcessStore InformationDomain
aggregationOfInformationDomainOperatingProcessStore = aggregationOfBuildingBlock

{- operatingProcessStore : derived relation obtained by composing
   membershipOfOperatingProcessStore and aggregationOfInformationDomainOperatingProcessStore
   It directly links an Resource Action Process to the final aggregated InformationDomain
   hiding the reifying OperatingProcessStore
-}
operatingProcessStore : Linkage ResourceActionProcess InformationDomain
operatingProcessStore = membershipOfOperatingProcessStore  ∘  aggregationOfInformationDomainOperatingProcessStore
