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


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Subject System: -}
-- Aggregate Member : Subject System
SubjectSystem : ClassOfClassOfBoundedIndividual
SubjectSystem = ClassOfBoundedIndividual



--  SubjectSystem is subTypeOf SubjectResourceAgent
st-c450d59061de6127-2b6f350061baea62 : SubjectSystem ⊏ₑ SubjectResourceAgent
st-c450d59061de6127-2b6f350061baea62 = polySubTypeOf-identity

--  SubjectSystem is subTypeOf SubjectAgent
st-c450d59061de6127-fa4ffc205ec86201 : SubjectSystem ⊏ₑ SubjectAgent
st-c450d59061de6127-fa4ffc205ec86201 = polySubTypeOf-identity

--  SubjectSystem is subTypeOf ParticipantBusinessSystem
st-c450d59061de6127-c450d63661de652a : SubjectSystem ⊏ₑ ParticipantBusinessSystem
st-c450d59061de6127-c450d63661de652a = polySubTypeOf-identity

--  SubjectSystem is subTypeOf BusinessSystem
st-c450d59061de6127-278675d65b252f4d : SubjectSystem ⊏ₑ BusinessSystem
st-c450d59061de6127-278675d65b252f4d = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Partner System: -}
-- Aggregate Member : Partner System
PartnerSystem : ClassOfClassOfBoundedIndividual
PartnerSystem = ClassOfBoundedIndividual



--  PartnerSystem is subTypeOf PartnerResourceAgent
st-c450d5b361de622e-2b6f34c861bae941 : PartnerSystem ⊏ₑ PartnerResourceAgent
st-c450d5b361de622e-2b6f34c861bae941 = polySubTypeOf-identity

--  PartnerSystem is subTypeOf ParticipantBusinessSystem
st-c450d5b361de622e-c450d63661de652a : PartnerSystem ⊏ₑ ParticipantBusinessSystem
st-c450d5b361de622e-c450d63661de652a = polySubTypeOf-identity

--  PartnerSystem is subTypeOf PartnerAgent
st-c450d5b361de622e-fa4ffc235ec86276 : PartnerSystem ⊏ₑ PartnerAgent
st-c450d5b361de622e-fa4ffc235ec86276 = polySubTypeOf-identity

--  PartnerSystem is subTypeOf BusinessSystem
st-c450d5b361de622e-278675d65b252f4d : PartnerSystem ⊏ₑ BusinessSystem
st-c450d5b361de622e-278675d65b252f4d = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Participant Business System: -}
-- Aggregate Member : Participant Business System
ParticipantBusinessSystem : ClassOfClassOfBoundedIndividual
ParticipantBusinessSystem = ClassOfBoundedIndividual



--  ParticipantBusinessSystem is subTypeOf ParticipantAgent
st-c450d63661de652a-80be28965fc2a6b8 : ParticipantBusinessSystem ⊏ₑ ParticipantAgent
st-c450d63661de652a-80be28965fc2a6b8 = polySubTypeOf-identity

--  ParticipantBusinessSystem is subTypeOf BusinessSystem
st-c450d63661de652a-278675d65b252f4d : ParticipantBusinessSystem ⊏ₑ BusinessSystem
st-c450d63661de652a-278675d65b252f4d = polySubTypeOf-identity

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


