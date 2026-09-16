{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business System Environment Sxcenario: 
A Business System Environment Sxcenario is a story involving the partners of a Business System (Partner System), interacting in order to achieve Business Outcome Events in a specific Eco-System (Business System Environment).This includes:- A course of events represented by Object Flows depicting the story towards the delivery of expected Outcomes.- Interacting partners who participate to the story in the considered Eco-System.

Documentation : https://framework.sysfeat.com/pages/4edf5eab5fc58ef3.htm

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
st-4edf5eab5fc58ef3-2b6f337e61bae6d6 : BusinessSystemEnvironmentSxcenario ⊏ₑ BusinessEnvironmentScenario
st-4edf5eab5fc58ef3-2b6f337e61bae6d6 = polySubTypeOf-identity

-- == Relationships =======================

{- Scenarized System Environment: -}
scenarizedSystemEnvironment :  Linkage BusinessSystemEnvironmentSxcenario BusinessSystemEnvironment
scenarizedSystemEnvironment = make_classOfHolonymy "Scenarized System Environment" "Scenarized System Environment"

postulate -- scenarizedSystemEnvironment is subTypeOf scenarizedBusinessEnvironment
  st-25c1a95361e21158-2b6f37c161baeeed  : scenarizedSystemEnvironment   ⊏⋆ᵣ  scenarizedBusinessEnvironment 

{- Subject System: -}
-- Aggregate Member : Subject System
SubjectSystem : ClassOfClassOfIndividual
SubjectSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSystem :  Linkage BusinessSystemEnvironmentSxcenario SubjectSystem
membershipOfSubjectSystem = make_upwardNestingRelation "subjectSystem membership" "nested subjectSystem"

-- Aggregation relation
aggregationOfBusinessSystemSubjectSystem :  Linkage SubjectSystem BusinessSystem
aggregationOfBusinessSystemSubjectSystem = make_Relation "BusinessSystem aggregation" "aggregated BusinessSystem"

{- subjectSystem : derived relation obtained by composing
   membershipOfSubjectSystem and aggregationOfBusinessSystemSubjectSystem
   It directly links an Business System Environment Sxcenario to the final aggregated BusinessSystem
   hiding the reifying SubjectSystem
-}
subjectSystem : Linkage BusinessSystemEnvironmentSxcenario BusinessSystem
subjectSystem = membershipOfSubjectSystem  ∘  aggregationOfBusinessSystemSubjectSystem

postulate -- subjectSystem is subTypeOf subjectResourceAgent
  st-4edf5f1f5fc590f0-2b6f5c4161bafdfd  : subjectSystem   ⊏⋆ᵣ  subjectResourceAgent 


{- Partner System: -}
-- Aggregate Member : Partner System
PartnerSystem : ClassOfClassOfIndividual
PartnerSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSystem :  Linkage BusinessSystemEnvironmentSxcenario PartnerSystem
membershipOfPartnerSystem = make_upwardNestingRelation "partnerSystem membership" "nested partnerSystem"

-- Aggregation relation
aggregationOfBusinessSystemPartnerSystem :  Linkage PartnerSystem BusinessSystem
aggregationOfBusinessSystemPartnerSystem = make_Relation "BusinessSystem aggregation" "aggregated BusinessSystem"

{- partnerSystem : derived relation obtained by composing
   membershipOfPartnerSystem and aggregationOfBusinessSystemPartnerSystem
   It directly links an Business System Environment Sxcenario to the final aggregated BusinessSystem
   hiding the reifying PartnerSystem
-}
partnerSystem : Linkage BusinessSystemEnvironmentSxcenario BusinessSystem
partnerSystem = membershipOfPartnerSystem  ∘  aggregationOfBusinessSystemPartnerSystem

postulate -- partnerSystem is subTypeOf participantSystem
  st-4edf5f445fc591d8-4edf5fa95fc593f0  : partnerSystem   ⊏⋆ᵣ  participantSystem 
postulate -- partnerSystem is subTypeOf partnerResourceAgent
  st-4edf5f445fc591d8-2b6f35bc61baecc4  : partnerSystem   ⊏⋆ᵣ  partnerResourceAgent 


{- Participant System: -}
-- Aggregate Member : Participant System
ParticipantSystem : ClassOfClassOfIndividual
ParticipantSystem = ClassOfIndividual

-- Membership relation
membershipOfParticipantSystem :  Linkage BusinessSystemEnvironmentSxcenario ParticipantSystem
membershipOfParticipantSystem = make_upwardNestingRelation "participantSystem membership" "nested participantSystem"

-- Aggregation relation
aggregationOfBusinessSystemParticipantSystem :  Linkage ParticipantSystem BusinessSystem
aggregationOfBusinessSystemParticipantSystem = make_Relation "BusinessSystem aggregation" "aggregated BusinessSystem"

{- participantSystem : derived relation obtained by composing
   membershipOfParticipantSystem and aggregationOfBusinessSystemParticipantSystem
   It directly links an Business System Environment Sxcenario to the final aggregated BusinessSystem
   hiding the reifying ParticipantSystem
-}
participantSystem : Linkage BusinessSystemEnvironmentSxcenario BusinessSystem
participantSystem = membershipOfParticipantSystem  ∘  aggregationOfBusinessSystemParticipantSystem

postulate -- participantSystem is subTypeOf participantEnterpriseAgent
  st-4edf5fa95fc593f0-2b6f3bf061baf60a  : participantSystem   ⊏⋆ᵣ  participantEnterpriseAgent 

