{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Action Process: 
A Resource Action Process is a Action Process Type that describes a typical course of action intended to produce and react to Resource Outcome Events, through the involvement of Resource Agent Types (Participant Resource Agent).During its course of action, a Resource Action Process consumes or produces Resource Assets.1) It may memorize or access Resource Assets to and from its Process Stores.2) It may receive Resource Assets at its boundary: Resource Outcome Consumptions.3) It may signal the production of Resource Assets at its boundary: Resource Outcome Productions.The course of actions of an Resource Action Process is constrained by the application of rules (Resource Rule Enforcement) that define what is allowed and not allowed to do.Within SysFEAT, we can examine Resource Action Processes from two distinct perspectives:a) An operations business perspective is offered by Business Processes.c) An automated viewpoint is provided by System Processes.

Documentation : https://framework.sysfeat.com/pages/e2ef095b62147bf9.htm

External references:
  OMG - UAF - Function: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Function
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


--  ResourceActionProcess is subTypeOf ResourceBehavior
st-e2ef095b62147bf9-0185cd936221bd72 : ResourceActionProcess ⊏ₑ ResourceBehavior
st-e2ef095b62147bf9-0185cd936221bd72 = polySubTypeOf-identity

--  ResourceActionProcess is subTypeOf ActionProcessType
st-e2ef095b62147bf9-d682ef5e56144e77 : ResourceActionProcess ⊏ₑ ActionProcessType
st-e2ef095b62147bf9-d682ef5e56144e77 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Resource Process: -}
specializedResourceProcess :  Linkage ResourceActionProcess ResourceActionProcess
specializedResourceProcess = make_subTypeOf "Specialized Resource Process" "Specialized Resource Process"

postulate -- specializedResourceProcess is subTypeOf specializedProcess
  st-325a39d966f353be-325a376e66f345e2  : specializedResourceProcess  ⊏⋆ᵣ  specializedProcess
postulate -- specializedResourceProcess is subTypeOf specializedResourceBehavior
  st-325a39d966f353be-325a376866f343d3  : specializedResourceProcess  ⊏⋆ᵣ  specializedResourceBehavior

-- -------------------------------------------------------------------------------------------- 
{- Realized Operating Process: -}
realizedOperatingProcess :  Linkage ResourceActionProcess ResourceActionProcess
realizedOperatingProcess = make_subTypeOf "Realized Operating Process" "Realized Operating Process"

postulate -- realizedOperatingProcess is subTypeOf realizedProces
  st-325a3a1666f35c35-325a3a1466f35b22  : realizedOperatingProcess  ⊏⋆ᵣ  realizedProces

-- -------------------------------------------------------------------------------------------- 
{- Sequence Flow: -}
-- Aggregate Member : Sequence Flow
SequenceFlow : ClassOfClassOfIndividual
SequenceFlow = ClassOfIndividual


--  SequenceFlow is subTypeOf SequenceFlow
st-018518ea6222cfa8-40d5416b5ee36739 : SequenceFlow ⊏ₑ SequenceFlow
st-018518ea6222cfa8-40d5416b5ee36739 = polySubTypeOf-identity

-- Membership relation
membershipOfSequenceFlow :  Linkage ResourceActionProcess SequenceFlow
membershipOfSequenceFlow = make_upwardNestingRelation "sequenceFlow membership" "nested sequenceFlow"

-- Aggregation relation
aggregationOfBusinessEventSequenceFlow :  Linkage SequenceFlow BusinessEvent
aggregationOfBusinessEventSequenceFlow = make_Relation "BusinessEvent aggregation" "aggregated BusinessEvent"

{- sequenceFlow : derived relation obtained by composing
   membershipOfSequenceFlow and aggregationOfBusinessEventSequenceFlow
   It directly links an Resource Action Process to the final aggregated BusinessEvent
   hiding the reifying SequenceFlow
-}
sequenceFlow : Linkage ResourceActionProcess BusinessEvent
sequenceFlow = membershipOfSequenceFlow  ∘  aggregationOfBusinessEventSequenceFlow



-- -------------------------------------------------------------------------------------------- 
{- Resource Object Flow: -}
-- Aggregate Member : Resource Object Flow
ResourceObjectFlow : ClassOfClassOfIndividual
ResourceObjectFlow = ClassOfIndividual


--  ResourceObjectFlow is subTypeOf ObjectFlow
st-0185194e6222d13a-e4c0fff75ed0ec45 : ResourceObjectFlow ⊏ₑ ObjectFlow
st-0185194e6222d13a-e4c0fff75ed0ec45 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceObjectFlow :  Linkage ResourceActionProcess ResourceObjectFlow
membershipOfResourceObjectFlow = make_upwardNestingRelation "resourceObjectFlow membership" "nested resourceObjectFlow"

-- Aggregation relation
aggregationOfResourceOutcomeEventResourceObjectFlow :  Linkage ResourceObjectFlow ResourceOutcomeEvent
aggregationOfResourceOutcomeEventResourceObjectFlow = make_Relation "ResourceOutcomeEvent aggregation" "aggregated ResourceOutcomeEvent"

{- resourceObjectFlow : derived relation obtained by composing
   membershipOfResourceObjectFlow and aggregationOfResourceOutcomeEventResourceObjectFlow
   It directly links an Resource Action Process to the final aggregated ResourceOutcomeEvent
   hiding the reifying ResourceObjectFlow
-}
resourceObjectFlow : Linkage ResourceActionProcess ResourceOutcomeEvent
resourceObjectFlow = membershipOfResourceObjectFlow  ∘  aggregationOfResourceOutcomeEventResourceObjectFlow



-- -------------------------------------------------------------------------------------------- 
{- Participant Resource Agent: -}
-- Aggregate Member : Participant Resource Agent
ParticipantResourceAgent : ClassOfClassOfBoundedIndividual
ParticipantResourceAgent = ClassOfBoundedIndividual



--  ParticipantResourceAgent is subTypeOf ResourceBehaviorParticipant
st-f8e61ffd621dbebc-e0e874626578a341 : ParticipantResourceAgent ⊏ₑ ResourceBehaviorParticipant
st-f8e61ffd621dbebc-e0e874626578a341 = polySubTypeOf-identity

--  ParticipantResourceAgent is subTypeOf ActiveParticipant
st-f8e61ffd621dbebc-004b041f5ebd1119 : ParticipantResourceAgent ⊏ₑ ActiveParticipant
st-f8e61ffd621dbebc-004b041f5ebd1119 = polySubTypeOf-identity

--  ParticipantResourceAgent is subTypeOf ResourceAgentType
st-f8e61ffd621dbebc-e2ef091962147ad7 : ParticipantResourceAgent ⊏ₑ ResourceAgentType
st-f8e61ffd621dbebc-e2ef091962147ad7 = polySubTypeOf-identity

-- Membership relation
membershipOfParticipantResourceAgent :  Linkage ResourceActionProcess ParticipantResourceAgent
membershipOfParticipantResourceAgent = make_upwardNestingRelation "participantResourceAgent membership" "nested participantResourceAgent"

-- Aggregation relation
aggregationOfResourceAgentTypeParticipantResourceAgent :  Linkage ParticipantResourceAgent ResourceAgentType
aggregationOfResourceAgentTypeParticipantResourceAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- participantResourceAgent : derived relation obtained by composing
   membershipOfParticipantResourceAgent and aggregationOfResourceAgentTypeParticipantResourceAgent
   It directly links an Resource Action Process to the final aggregated ResourceAgentType
   hiding the reifying ParticipantResourceAgent
-}
participantResourceAgent : Linkage ResourceActionProcess ResourceAgentType
participantResourceAgent = membershipOfParticipantResourceAgent  ∘  aggregationOfResourceAgentTypeParticipantResourceAgent



-- -------------------------------------------------------------------------------------------- 
{- Resource Process Step: -}
-- Aggregate Member : Resource Process Step
ResourceProcessStep : ClassOfClassOfBoundedIndividual
ResourceProcessStep = ClassOfBoundedIndividual



--  ResourceProcessStep is subTypeOf ProcessStep
st-f8e62045621dbffb-8e1390925ebe3db7 : ResourceProcessStep ⊏ₑ ProcessStep
st-f8e62045621dbffb-8e1390925ebe3db7 = polySubTypeOf-identity

--  ResourceProcessStep is subTypeOf ResourceActionProcess
st-f8e62045621dbffb-e2ef095b62147bf9 : ResourceProcessStep ⊏ₑ ResourceActionProcess
st-f8e62045621dbffb-e2ef095b62147bf9 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceProcessStep :  Linkage ResourceActionProcess ResourceProcessStep
membershipOfResourceProcessStep = make_upwardNestingRelation "resourceProcessStep membership" "nested resourceProcessStep"

-- Aggregation relation
aggregationOfResourceActionProcessResourceProcessStep :  Linkage ResourceProcessStep ResourceActionProcess
aggregationOfResourceActionProcessResourceProcessStep = make_Relation "ResourceActionProcess aggregation" "aggregated ResourceActionProcess"

{- resourceProcessStep : derived relation obtained by composing
   membershipOfResourceProcessStep and aggregationOfResourceActionProcessResourceProcessStep
   It directly links an Resource Action Process to the final aggregated ResourceActionProcess
   hiding the reifying ResourceProcessStep
-}
resourceProcessStep : Linkage ResourceActionProcess ResourceActionProcess
resourceProcessStep = membershipOfResourceProcessStep  ∘  aggregationOfResourceActionProcessResourceProcessStep



-- -------------------------------------------------------------------------------------------- 
{- Operating Process Store: -}
-- Aggregate Member : Operating Process Store
OperatingProcessStore : ClassOfClassOfIndividual
OperatingProcessStore = ClassOfIndividual


--  OperatingProcessStore is subTypeOf ProcessStore
st-d69196306228f16e-e4c003255ed1f037 : OperatingProcessStore ⊏ₑ ProcessStore
st-d69196306228f16e-e4c003255ed1f037 = polySubTypeOf-identity

--  OperatingProcessStore is subTypeOf InformationDomain
st-d69196306228f16e-d6cd116d5ab97525 : OperatingProcessStore ⊏ₑ InformationDomain
st-d69196306228f16e-d6cd116d5ab97525 = polySubTypeOf-identity

-- Membership relation
membershipOfOperatingProcessStore :  Linkage ResourceActionProcess OperatingProcessStore
membershipOfOperatingProcessStore = make_upwardNestingRelation "operatingProcessStore membership" "nested operatingProcessStore"

-- Aggregation relation
aggregationOfInformationDomainOperatingProcessStore :  Linkage OperatingProcessStore InformationDomain
aggregationOfInformationDomainOperatingProcessStore = make_Relation "InformationDomain aggregation" "aggregated InformationDomain"

{- operatingProcessStore : derived relation obtained by composing
   membershipOfOperatingProcessStore and aggregationOfInformationDomainOperatingProcessStore
   It directly links an Resource Action Process to the final aggregated InformationDomain
   hiding the reifying OperatingProcessStore
-}
operatingProcessStore : Linkage ResourceActionProcess InformationDomain
operatingProcessStore = membershipOfOperatingProcessStore  ∘  aggregationOfInformationDomainOperatingProcessStore


