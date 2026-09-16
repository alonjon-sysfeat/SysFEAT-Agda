{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business System: 
A Business System is a man made artifact (Concrete Hardware System or Business Software System) which exposes Functionalityies and can produce Business Outcome Events.A Business System performs System Processes and participates to System Processes or to Business Processes.In System Processes, a Business System is always an active participant (System Process Participant).In Business Processes, a Business System is either an active participant (Automated Participant) or an Instrument used by Org-Unit Types.

Documentation : https://framework.sysfeat.com/pages/278675d65b252f4d.htm

External references:
  DAU Glossary - family-systems: https://www.dau.edu/glossary/family-systems
  OMG - UAF - ResourceArtifact: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#ResourceArtifact
  Russell Ackoff - Choice & Communication - Instrument: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Instrument
  WordNet - Artifact: https://en-word.net/ili/i35572
  UCF Glossary - Business System: https://compliancedictionary.com/term/580
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

--  BusinessSystem is subTypeOf BusinessAgentType
st-278675d65b252f4d-bcebd31f5491302c : BusinessSystem ⊏ₑ BusinessAgentType
st-278675d65b252f4d-bcebd31f5491302c = polySubTypeOf-identity

--  BusinessSystem is subTypeOf BusinessSystemAsset
st-278675d65b252f4d-6246927f61b81996 : BusinessSystem ⊏ₑ BusinessSystemAsset
st-278675d65b252f4d-6246927f61b81996 = polySubTypeOf-identity

-- == Relationships =======================

{- Enabler Technology System: -}
enablerTechnologySystem :  Linkage BusinessSystem TechnologySystem
enablerTechnologySystem = make_classOfHolonymy "Enabler Technology System" "Enabler Technology System"


{- Specialized Business System: -}
specializedBusinessSystem :  Linkage BusinessSystem BusinessSystem
specializedBusinessSystem = make_subTypeOf "Specialized Business System" "Specialized Business System"

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
membershipOfPerformedBusinessSystemScenario = make_upwardNestingRelation "performedBusinessSystemScenario membership" "nested performedBusinessSystemScenario"

-- Aggregation relation
aggregationOfBusinessSystemInteractionProcessPerformedBusinessSystemScenario :  Linkage PerformedBusinessSystemScenario BusinessSystemInteractionProcess
aggregationOfBusinessSystemInteractionProcessPerformedBusinessSystemScenario = make_Relation "BusinessSystemInteractionProcess aggregation" "aggregated BusinessSystemInteractionProcess"

{- performedBusinessSystemScenario : derived relation obtained by composing
   membershipOfPerformedBusinessSystemScenario and aggregationOfBusinessSystemInteractionProcessPerformedBusinessSystemScenario
   It directly links an Business System to the final aggregated BusinessSystemInteractionProcess
   hiding the reifying PerformedBusinessSystemScenario
-}
performedBusinessSystemScenario : Linkage BusinessSystem BusinessSystemInteractionProcess
performedBusinessSystemScenario = membershipOfPerformedBusinessSystemScenario  ∘  aggregationOfBusinessSystemInteractionProcessPerformedBusinessSystemScenario

postulate -- performedBusinessSystemScenario is subTypeOf performedResourceScenario
  st-24034ee25fc79b20-230b3f9061d8937b  : performedBusinessSystemScenario   ⊏⋆ᵣ  performedResourceScenario 


{- Performed System Process: 
An application process performance establishes the relationship between an application and the some dynamic behaviors described as BPMN processes. 
-}
-- Aggregate Member : Performed System Process
PerformedSystemProcess : ClassOfClassOfIndividual
PerformedSystemProcess = ClassOfIndividual

-- Membership relation
membershipOfPerformedSystemProcess :  Linkage BusinessSystem PerformedSystemProcess
membershipOfPerformedSystemProcess = make_upwardNestingRelation "performedSystemProcess membership" "nested performedSystemProcess"

-- Aggregation relation
aggregationOfSystemProcessPerformedSystemProcess :  Linkage PerformedSystemProcess SystemProcess
aggregationOfSystemProcessPerformedSystemProcess = make_Relation "SystemProcess aggregation" "aggregated SystemProcess"

{- performedSystemProcess : derived relation obtained by composing
   membershipOfPerformedSystemProcess and aggregationOfSystemProcessPerformedSystemProcess
   It directly links an Business System to the final aggregated SystemProcess
   hiding the reifying PerformedSystemProcess
-}
performedSystemProcess : Linkage BusinessSystem SystemProcess
performedSystemProcess = membershipOfPerformedSystemProcess  ∘  aggregationOfSystemProcessPerformedSystemProcess

postulate -- performedSystemProcess is subTypeOf businessSystemAssetPart
  st-b4ebc8825ffdddbf-9e0fedcf68be6cd9  : performedSystemProcess   ⊏⋆ᵣ  businessSystemAssetPart 
postulate -- performedSystemProcess is subTypeOf performedBusinessResourceProcess
  st-b4ebc8825ffdddbf-240353b45fc7a13f  : performedSystemProcess   ⊏⋆ᵣ  performedBusinessResourceProcess 

