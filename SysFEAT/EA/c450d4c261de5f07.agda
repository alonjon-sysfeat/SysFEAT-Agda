{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business System Environment: 
A Business System Environment is an operating context in which a Business System defines its interactions (Business Service Channel) with its partners (Partner System), to produce and deliver its Business Outcome Events.

Documentation : https://framework.sysfeat.com/pages/c450d4c261de5f07.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c450d4c261de5f07 where -- ========== Business System Environment

open import Agda.Primitive
open import SysFEAT.EA.2b6f33a561bae7ab public -- Business Agent Environment
open import SysFEAT.EA.278675d65b252f4d public -- Business System

BusinessSystemEnvironment : ClassOfClassOfBoundedIndividual
BusinessSystemEnvironment = ClassOfBoundedIndividual

--  BusinessSystemEnvironment is subTypeOf BusinessAgentEnvironment
st-c450d4c261de5f07-2b6f33a561bae7ab : BusinessSystemEnvironment ⊏ₑ BusinessAgentEnvironment
st-c450d4c261de5f07-2b6f33a561bae7ab = polySubTypeOf-identity

-- == Relationships =======================

{- Subject System: -}
-- Aggregate Member : Subject System
SubjectSystem : ClassOfClassOfIndividual
SubjectSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSystem :  Linkage BusinessSystemEnvironment SubjectSystem
membershipOfSubjectSystem = make_upwardNestingRelation "subjectSystem membership" "nested subjectSystem"

-- Aggregation relation
aggregationOfBusinessSystemSubjectSystem :  Linkage SubjectSystem BusinessSystem
aggregationOfBusinessSystemSubjectSystem = make_Relation "BusinessSystem aggregation" "aggregated BusinessSystem"

{- subjectSystem : derived relation obtained by composing
   membershipOfSubjectSystem and aggregationOfBusinessSystemSubjectSystem
   It directly links an Business System Environment to the final aggregated BusinessSystem
   hiding the reifying SubjectSystem
-}
subjectSystem : Linkage BusinessSystemEnvironment BusinessSystem
subjectSystem = membershipOfSubjectSystem  ∘  aggregationOfBusinessSystemSubjectSystem

postulate -- subjectSystem is subTypeOf subjectResourceAgent
  st-c450d59061de6127-2b6f350061baea62  : subjectSystem   ⊏⋆ᵣ  subjectResourceAgent 
postulate -- subjectSystem is subTypeOf subjectAgent
  st-c450d59061de6127-fa4ffc205ec86201  : subjectSystem   ⊏⋆ᵣ  subjectAgent 
postulate -- subjectSystem is subTypeOf participantBusinessSystem
  st-c450d59061de6127-c450d63661de652a  : subjectSystem   ⊏⋆ᵣ  participantBusinessSystem 


{- Partner System: -}
-- Aggregate Member : Partner System
PartnerSystem : ClassOfClassOfIndividual
PartnerSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSystem :  Linkage BusinessSystemEnvironment PartnerSystem
membershipOfPartnerSystem = make_upwardNestingRelation "partnerSystem membership" "nested partnerSystem"

-- Aggregation relation
aggregationOfBusinessSystemPartnerSystem :  Linkage PartnerSystem BusinessSystem
aggregationOfBusinessSystemPartnerSystem = make_Relation "BusinessSystem aggregation" "aggregated BusinessSystem"

{- partnerSystem : derived relation obtained by composing
   membershipOfPartnerSystem and aggregationOfBusinessSystemPartnerSystem
   It directly links an Business System Environment to the final aggregated BusinessSystem
   hiding the reifying PartnerSystem
-}
partnerSystem : Linkage BusinessSystemEnvironment BusinessSystem
partnerSystem = membershipOfPartnerSystem  ∘  aggregationOfBusinessSystemPartnerSystem

postulate -- partnerSystem is subTypeOf partnerResourceAgent
  st-c450d5b361de622e-2b6f34c861bae941  : partnerSystem   ⊏⋆ᵣ  partnerResourceAgent 
postulate -- partnerSystem is subTypeOf participantBusinessSystem
  st-c450d5b361de622e-c450d63661de652a  : partnerSystem   ⊏⋆ᵣ  participantBusinessSystem 
postulate -- partnerSystem is subTypeOf partnerAgent
  st-c450d5b361de622e-fa4ffc235ec86276  : partnerSystem   ⊏⋆ᵣ  partnerAgent 


{- Participant Business System: -}
-- Aggregate Member : Participant Business System
ParticipantBusinessSystem : ClassOfClassOfIndividual
ParticipantBusinessSystem = ClassOfIndividual

-- Membership relation
membershipOfParticipantBusinessSystem :  Linkage BusinessSystemEnvironment ParticipantBusinessSystem
membershipOfParticipantBusinessSystem = make_upwardNestingRelation "participantBusinessSystem membership" "nested participantBusinessSystem"

-- Aggregation relation
aggregationOfBusinessSystemParticipantBusinessSystem :  Linkage ParticipantBusinessSystem BusinessSystem
aggregationOfBusinessSystemParticipantBusinessSystem = make_Relation "BusinessSystem aggregation" "aggregated BusinessSystem"

{- participantBusinessSystem : derived relation obtained by composing
   membershipOfParticipantBusinessSystem and aggregationOfBusinessSystemParticipantBusinessSystem
   It directly links an Business System Environment to the final aggregated BusinessSystem
   hiding the reifying ParticipantBusinessSystem
-}
participantBusinessSystem : Linkage BusinessSystemEnvironment BusinessSystem
participantBusinessSystem = membershipOfParticipantBusinessSystem  ∘  aggregationOfBusinessSystemParticipantBusinessSystem

postulate -- participantBusinessSystem is subTypeOf participantAgent
  st-c450d63661de652a-80be28965fc2a6b8  : participantBusinessSystem   ⊏⋆ᵣ  participantAgent 

