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


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Scenarized System Environment: -}
scenarizedSystemEnvironment :  Linkage BusinessSystemEnvironmentSxcenario BusinessSystemEnvironment
scenarizedSystemEnvironment = make_classOfHolonymy "Scenarized System Environment" "Scenarized System Environment"

postulate -- scenarizedSystemEnvironment is subTypeOf scenarizedBusinessEnvironment
  st-25c1a95361e21158-2b6f37c161baeeed  : scenarizedSystemEnvironment  ⊏⋆ᵣ  scenarizedBusinessEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Subject System: -}
-- Aggregate Member : Subject System
SubjectSystem : ClassOfClassOfBoundedIndividual
SubjectSystem = ClassOfBoundedIndividual



--  SubjectSystem is subTypeOf SubjectResourceAgent
st-4edf5f1f5fc590f0-2b6f5c4161bafdfd : SubjectSystem ⊏ₑ SubjectResourceAgent
st-4edf5f1f5fc590f0-2b6f5c4161bafdfd = polySubTypeOf-identity

--  SubjectSystem is subTypeOf BusinessSystem
st-4edf5f1f5fc590f0-278675d65b252f4d : SubjectSystem ⊏ₑ BusinessSystem
st-4edf5f1f5fc590f0-278675d65b252f4d = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Partner System: -}
-- Aggregate Member : Partner System
PartnerSystem : ClassOfClassOfBoundedIndividual
PartnerSystem = ClassOfBoundedIndividual



--  PartnerSystem is subTypeOf ParticipantSystem
st-4edf5f445fc591d8-4edf5fa95fc593f0 : PartnerSystem ⊏ₑ ParticipantSystem
st-4edf5f445fc591d8-4edf5fa95fc593f0 = polySubTypeOf-identity

--  PartnerSystem is subTypeOf PartnerResourceAgent
st-4edf5f445fc591d8-2b6f35bc61baecc4 : PartnerSystem ⊏ₑ PartnerResourceAgent
st-4edf5f445fc591d8-2b6f35bc61baecc4 = polySubTypeOf-identity

--  PartnerSystem is subTypeOf BusinessSystem
st-4edf5f445fc591d8-278675d65b252f4d : PartnerSystem ⊏ₑ BusinessSystem
st-4edf5f445fc591d8-278675d65b252f4d = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Participant System: -}
-- Aggregate Member : Participant System
ParticipantSystem : ClassOfClassOfBoundedIndividual
ParticipantSystem = ClassOfBoundedIndividual



--  ParticipantSystem is subTypeOf ParticipantEnterpriseAgent
st-4edf5fa95fc593f0-2b6f3bf061baf60a : ParticipantSystem ⊏ₑ ParticipantEnterpriseAgent
st-4edf5fa95fc593f0-2b6f3bf061baf60a = polySubTypeOf-identity

--  ParticipantSystem is subTypeOf BusinessSystem
st-4edf5fa95fc593f0-278675d65b252f4d : ParticipantSystem ⊏ₑ BusinessSystem
st-4edf5fa95fc593f0-278675d65b252f4d = polySubTypeOf-identity

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


