{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business System Environment Sxcenario: 
A Business System Environment Sxcenario is a story involving the partners of a Business System (Partner System), interacting in order to achieve Business Outcome Events in a specific Eco-System (Business System Environment).This includes:- A course of events represented by Object Flows depicting the story towards the delivery of expected Outcomes.- Interacting partners who participate to the story in the considered Eco-System.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4edf5eab5fc58ef3 where -- ========== Business System Environment Sxcenario

open import Agda.Primitive
open import SysFEAT.EA.2b6f337e61bae6d6 public -- Business Environment Scenario
open import SysFEAT.EA.c450d4c261de5f07 public -- Business System Environment
open import SysFEAT.EA.278675d65b252f4d public -- Business System

BusinessSystemEnvironmentSxcenario : ClassOfClassOfBoundedIndividual
BusinessSystemEnvironmentSxcenario = ClassOfBoundedIndividual

--  BusinessSystemEnvironmentSxcenario is subTypeOf BusinessEnvironmentScenario
st-4edf70495fc5b4b0 : BusinessSystemEnvironmentSxcenario ⊏ₑ BusinessEnvironmentScenario
st-4edf70495fc5b4b0 = polySubTypeOf-identity

-- == Relationships =======================

{- Scenarized System Environment: -}
scenarizedSystemEnvironment :  Linkage BusinessSystemEnvironmentSxcenario BusinessSystemEnvironment
scenarizedSystemEnvironment = make_classOfHolonymy "Scenarized System Environment" "scenarizedSystemEnvironment"

postulate -- scenarizedSystemEnvironment is subTypeOf scenarizedBusinessEnvironment
  st-25c1a95361e21158-2b6f37c161baeeed  : scenarizedSystemEnvironment   ⊏⋆ᵣ  scenarizedBusinessEnvironment 

{- Subject System: -}
-- Aggregate Member : Subject System
SubjectSystem : ClassOfClassOfIndividual
SubjectSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSystem :  Linkage BusinessSystemEnvironmentSxcenario SubjectSystem
membershipOfSubjectSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemSubjectSystem :  Linkage SubjectSystem BusinessSystem
aggregationOfBusinessSystemSubjectSystem = aggregationOfBuildingBlock

{- subjectSystem : derived relation obtained by composing
   membershipOfSubjectSystem and aggregationOfBusinessSystemSubjectSystem
   It directly links an Business System Environment Sxcenario to the final aggregated BusinessSystem
   hiding the reifying SubjectSystem
-}
subjectSystem : Linkage BusinessSystemEnvironmentSxcenario BusinessSystem
subjectSystem = membershipOfSubjectSystem  ∘  aggregationOfBusinessSystemSubjectSystem

{- Partner System: -}
-- Aggregate Member : Partner System
PartnerSystem : ClassOfClassOfIndividual
PartnerSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSystem :  Linkage BusinessSystemEnvironmentSxcenario PartnerSystem
membershipOfPartnerSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemPartnerSystem :  Linkage PartnerSystem BusinessSystem
aggregationOfBusinessSystemPartnerSystem = aggregationOfBuildingBlock

{- partnerSystem : derived relation obtained by composing
   membershipOfPartnerSystem and aggregationOfBusinessSystemPartnerSystem
   It directly links an Business System Environment Sxcenario to the final aggregated BusinessSystem
   hiding the reifying PartnerSystem
-}
partnerSystem : Linkage BusinessSystemEnvironmentSxcenario BusinessSystem
partnerSystem = membershipOfPartnerSystem  ∘  aggregationOfBusinessSystemPartnerSystem

{- Participant System: -}
-- Aggregate Member : Participant System
ParticipantSystem : ClassOfClassOfIndividual
ParticipantSystem = ClassOfIndividual

-- Membership relation
membershipOfParticipantSystem :  Linkage BusinessSystemEnvironmentSxcenario ParticipantSystem
membershipOfParticipantSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemParticipantSystem :  Linkage ParticipantSystem BusinessSystem
aggregationOfBusinessSystemParticipantSystem = aggregationOfBuildingBlock

{- participantSystem : derived relation obtained by composing
   membershipOfParticipantSystem and aggregationOfBusinessSystemParticipantSystem
   It directly links an Business System Environment Sxcenario to the final aggregated BusinessSystem
   hiding the reifying ParticipantSystem
-}
participantSystem : Linkage BusinessSystemEnvironmentSxcenario BusinessSystem
participantSystem = membershipOfParticipantSystem  ∘  aggregationOfBusinessSystemParticipantSystem
