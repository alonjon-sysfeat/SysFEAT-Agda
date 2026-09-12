{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Resource Process: 
A Business Resource Process is a Resource Process which is conducted by Business Agent Types (physical resources such as Org-Unit Type, System of Resources ,Business Systems) and which describes how these entities act to produce and consume Business Outcome Events.Business Resource Processes include Business Processes and System Processes,
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7c40c3c85527466b where -- ========== Business Resource Process

open import Agda.Primitive
open import SysFEAT.EA.b4ebbf3e5ffdccdf public -- Business Behavior
open import SysFEAT.EA.e2ef095b62147bf9 public -- Resource Action Process
open import SysFEAT.EA.57dfc5f555093444 public -- Value Stream
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type

BusinessResourceProcess : ClassOfClassOfBoundedIndividual
BusinessResourceProcess = ClassOfBoundedIndividual

--  BusinessResourceProcess is subTypeOf BusinessBehavior
st-d69191d06228ed0d : BusinessResourceProcess ⊏ₑ BusinessBehavior
st-d69191d06228ed0d = polySubTypeOf-identity

--  BusinessResourceProcess is subTypeOf ResourceActionProcess
st-2781cc7f660b51a1 : BusinessResourceProcess ⊏ₑ ResourceActionProcess
st-2781cc7f660b51a1 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Resource Process: -}
specializedResourceProcess :  Linkage BusinessResourceProcess BusinessResourceProcess
specializedResourceProcess = make_subTypeOf "Specialized Resource Process" "specializedResourceProcess"

postulate -- specializedResourceProcess is subTypeOf specializedBusinessResourceBehavior
  st-325a376666f34350-325a37b666f34b83  : specializedResourceProcess   ⊏⋆ᵣ  specializedBusinessResourceBehavior 
postulate -- specializedResourceProcess is subTypeOf specializedResourceProcess
  st-325a376666f34350-325a39d966f353be  : specializedResourceProcess   ⊏⋆ᵣ  specializedResourceProcess 

{- Realized Value Stream: -}
realizedValueStream :  Linkage BusinessResourceProcess ValueStream
realizedValueStream = make_subTypeOf "Realized Value Stream" "realizedValueStream"

postulate -- realizedValueStream is subTypeOf realizedLogicalOperatingAsset
  st-332c473666f17994-332c47ab66f17a2e  : realizedValueStream   ⊏⋆ᵣ  realizedLogicalOperatingAsset 
postulate -- realizedValueStream is subTypeOf realizedOperatingProcess
  st-332c473666f17994-325a3a1666f35c35  : realizedValueStream   ⊏⋆ᵣ  realizedOperatingProcess 

{- Resource Flow: -}
-- Aggregate Member : Resource Flow
ResourceFlow : ClassOfClassOfIndividual
ResourceFlow = ClassOfIndividual

-- Membership relation
membershipOfResourceFlow :  Linkage BusinessResourceProcess ResourceFlow
membershipOfResourceFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessOutcomeEventResourceFlow :  Linkage ResourceFlow BusinessOutcomeEvent
aggregationOfBusinessOutcomeEventResourceFlow = aggregationOfBuildingBlock

{- resourceFlow : derived relation obtained by composing
   membershipOfResourceFlow and aggregationOfBusinessOutcomeEventResourceFlow
   It directly links an Business Resource Process to the final aggregated BusinessOutcomeEvent
   hiding the reifying ResourceFlow
-}
resourceFlow : Linkage BusinessResourceProcess BusinessOutcomeEvent
resourceFlow = membershipOfResourceFlow  ∘  aggregationOfBusinessOutcomeEventResourceFlow

{- Resource Activity Sequence: -}
-- Aggregate Member : Resource Activity Sequence
ResourceActivitySequence : ClassOfClassOfIndividual
ResourceActivitySequence = ClassOfIndividual

-- Membership relation
membershipOfResourceActivitySequence :  Linkage BusinessResourceProcess ResourceActivitySequence
membershipOfResourceActivitySequence = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBehavioralEventResourceActivitySequence :  Linkage ResourceActivitySequence BehavioralEvent
aggregationOfBehavioralEventResourceActivitySequence = aggregationOfBuildingBlock

{- resourceActivitySequence : derived relation obtained by composing
   membershipOfResourceActivitySequence and aggregationOfBehavioralEventResourceActivitySequence
   It directly links an Business Resource Process to the final aggregated BehavioralEvent
   hiding the reifying ResourceActivitySequence
-}
resourceActivitySequence : Linkage BusinessResourceProcess BehavioralEvent
resourceActivitySequence = membershipOfResourceActivitySequence  ∘  aggregationOfBehavioralEventResourceActivitySequence

{- Participant Business Agent: 
A Participant Business Agent is a Resource Behavior Participant indicating the role of an Agent actively engaged as a Business Agent Type within a Business Resource Process!
-}
-- Aggregate Member : Participant Business Agent
ParticipantBusinessAgent : ClassOfClassOfIndividual
ParticipantBusinessAgent = ClassOfIndividual

-- Membership relation
membershipOfParticipantBusinessAgent :  Linkage BusinessResourceProcess ParticipantBusinessAgent
membershipOfParticipantBusinessAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessAgentTypeParticipantBusinessAgent :  Linkage ParticipantBusinessAgent BusinessAgentType
aggregationOfBusinessAgentTypeParticipantBusinessAgent = aggregationOfBuildingBlock

{- participantBusinessAgent : derived relation obtained by composing
   membershipOfParticipantBusinessAgent and aggregationOfBusinessAgentTypeParticipantBusinessAgent
   It directly links an Business Resource Process to the final aggregated BusinessAgentType
   hiding the reifying ParticipantBusinessAgent
-}
participantBusinessAgent : Linkage BusinessResourceProcess BusinessAgentType
participantBusinessAgent = membershipOfParticipantBusinessAgent  ∘  aggregationOfBusinessAgentTypeParticipantBusinessAgent

{- Business Resource Process Step: -}
-- Aggregate Member : Business Resource Process Step
BusinessResourceProcessStep : ClassOfClassOfIndividual
BusinessResourceProcessStep = ClassOfIndividual

-- Membership relation
membershipOfBusinessResourceProcessStep :  Linkage BusinessResourceProcess BusinessResourceProcessStep
membershipOfBusinessResourceProcessStep = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessResourceProcessBusinessResourceProcessStep :  Linkage BusinessResourceProcessStep BusinessResourceProcess
aggregationOfBusinessResourceProcessBusinessResourceProcessStep = aggregationOfBuildingBlock

{- businessResourceProcessStep : derived relation obtained by composing
   membershipOfBusinessResourceProcessStep and aggregationOfBusinessResourceProcessBusinessResourceProcessStep
   It directly links an Business Resource Process to the final aggregated BusinessResourceProcess
   hiding the reifying BusinessResourceProcessStep
-}
businessResourceProcessStep : Linkage BusinessResourceProcess BusinessResourceProcess
businessResourceProcessStep = membershipOfBusinessResourceProcessStep  ∘  aggregationOfBusinessResourceProcessBusinessResourceProcessStep
