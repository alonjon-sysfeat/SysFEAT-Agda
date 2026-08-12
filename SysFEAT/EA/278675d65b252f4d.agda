{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business System: 
A Business System is a man made artifact (Concrete Hardware System or Business Software System) which exposes Functionalityies and can produce Business Outcome Events.A Business System performs System Processes and participates to System Processes or to Business Processes.In System Processes, a Business System is always an active participant (System Process Participant).In Business Processes, a Business System is either an active participant (Automated Participant) or an Instrument used by Org-Unit Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.278675d65b252f4d where -- ========== Business System

open import Agda.Primitive
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type
open import SysFEAT.EA.6246927f61b81996 public -- Business System Asset
open import SysFEAT.EA.0cbd1fa663fe18ac public -- Technology System
open import SysFEAT.EA.7a0a06c45ddf969e public -- Business System Interaction Process
open import SysFEAT.EA.46194939560d374f public -- System Process

BusinessSystem : ClassOfClassOfBoundedIndividual
BusinessSystem = ClassOfBoundedIndividual

postulate --  BusinessSystem is subTypeOf BusinessAgentType
  st-108489c25fce9243 : BusinessSystem ⊏ₑ BusinessAgentType

postulate --  BusinessSystem is subTypeOf BusinessSystemAsset
  st-6246930961b81a51 : BusinessSystem ⊏ₑ BusinessSystemAsset

-- == Relationships =======================

{- Enabler Technology System: -}
enablerTechnologySystem :  Linkage BusinessSystem TechnologySystem
enablerTechnologySystem = make_classOfHolonymy "Enabler Technology System" "enablerTechnologySystem"


{- Specialized Business System: -}
specializedBusinessSystem :  Linkage BusinessSystem BusinessSystem
specializedBusinessSystem = make_subTypeOf "Specialized Business System" "specializedBusinessSystem"

postulate -- specializedBusinessSystem is subTypeOf specializedResourceAgent
  st-325a375d66f34096-52c3540066f226f4  : specializedBusinessSystem   ⊏⋆ᵣ  specializedResourceAgent 
postulate -- specializedBusinessSystem is subTypeOf specializedBusinessSystemAsset
  st-325a375d66f34096-325a37b966f34e1e  : specializedBusinessSystem   ⊏⋆ᵣ  specializedBusinessSystemAsset 

{- Performed Business System Scenario: -}
-- Aggregate Member : Performed Business System Scenario
PerformedBusinessSystemScenario : ClassOfClassOfIndividual
PerformedBusinessSystemScenario = ClassOfIndividual

-- Membership relation
membershipOfPerformedBusinessSystemScenario :  Linkage BusinessSystem PerformedBusinessSystemScenario
membershipOfPerformedBusinessSystemScenario = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemInteractionProcessPerformedBusinessSystemScenario :  Linkage PerformedBusinessSystemScenario BusinessSystemInteractionProcess
aggregationOfBusinessSystemInteractionProcessPerformedBusinessSystemScenario = aggregationOfBuildingBlock

{- performedBusinessSystemScenario : derived relation obtained by composing
   membershipOfPerformedBusinessSystemScenario and aggregationOfBusinessSystemInteractionProcessPerformedBusinessSystemScenario
   It directly links an Business System to the final aggregated BusinessSystemInteractionProcess
   hiding the reifying PerformedBusinessSystemScenario
-}
performedBusinessSystemScenario : Linkage BusinessSystem BusinessSystemInteractionProcess
performedBusinessSystemScenario = membershipOfPerformedBusinessSystemScenario  ∘  aggregationOfBusinessSystemInteractionProcessPerformedBusinessSystemScenario

{- Performed System Process: 
An application process performance establishes the relationship between an application and the some dynamic behaviors described as BPMN processes. 
-}
-- Aggregate Member : Performed System Process
PerformedSystemProcess : ClassOfClassOfIndividual
PerformedSystemProcess = ClassOfIndividual

-- Membership relation
membershipOfPerformedSystemProcess :  Linkage BusinessSystem PerformedSystemProcess
membershipOfPerformedSystemProcess = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSystemProcessPerformedSystemProcess :  Linkage PerformedSystemProcess SystemProcess
aggregationOfSystemProcessPerformedSystemProcess = aggregationOfBuildingBlock

{- performedSystemProcess : derived relation obtained by composing
   membershipOfPerformedSystemProcess and aggregationOfSystemProcessPerformedSystemProcess
   It directly links an Business System to the final aggregated SystemProcess
   hiding the reifying PerformedSystemProcess
-}
performedSystemProcess : Linkage BusinessSystem SystemProcess
performedSystemProcess = membershipOfPerformedSystemProcess  ∘  aggregationOfSystemProcessPerformedSystemProcess
