{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business System Environment: 
A Business System Environment is an operating context in which a Business System defines its interactions (Business Service Channel) with its partners (Partner System), to produce and deliver its Business Outcome Events.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c450d4c261de5f07 where -- ========== Business System Environment

open import Agda.Primitive
open import SysFEAT.EA.2b6f33a561bae7ab public -- Business Agent Environment
open import SysFEAT.EA.278675d65b252f4d public -- Business System

BusinessSystemEnvironment : ClassOfClassOfBoundedIndividual
BusinessSystemEnvironment = ClassOfBoundedIndividual

--  BusinessSystemEnvironment is subTypeOf BusinessAgentEnvironment
st-c450d4ee61de6079 : BusinessSystemEnvironment ⊏ₑ BusinessAgentEnvironment
st-c450d4ee61de6079 = polySubTypeOf-identity

-- == Relationships =======================

{- Subject System: -}
-- Aggregate Member : Subject System
SubjectSystem : ClassOfClassOfIndividual
SubjectSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSystem :  Linkage BusinessSystemEnvironment SubjectSystem
membershipOfSubjectSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemSubjectSystem :  Linkage SubjectSystem BusinessSystem
aggregationOfBusinessSystemSubjectSystem = aggregationOfBuildingBlock

{- subjectSystem : derived relation obtained by composing
   membershipOfSubjectSystem and aggregationOfBusinessSystemSubjectSystem
   It directly links an Business System Environment to the final aggregated BusinessSystem
   hiding the reifying SubjectSystem
-}
subjectSystem : Linkage BusinessSystemEnvironment BusinessSystem
subjectSystem = membershipOfSubjectSystem  ∘  aggregationOfBusinessSystemSubjectSystem

{- Partner System: -}
-- Aggregate Member : Partner System
PartnerSystem : ClassOfClassOfIndividual
PartnerSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSystem :  Linkage BusinessSystemEnvironment PartnerSystem
membershipOfPartnerSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemPartnerSystem :  Linkage PartnerSystem BusinessSystem
aggregationOfBusinessSystemPartnerSystem = aggregationOfBuildingBlock

{- partnerSystem : derived relation obtained by composing
   membershipOfPartnerSystem and aggregationOfBusinessSystemPartnerSystem
   It directly links an Business System Environment to the final aggregated BusinessSystem
   hiding the reifying PartnerSystem
-}
partnerSystem : Linkage BusinessSystemEnvironment BusinessSystem
partnerSystem = membershipOfPartnerSystem  ∘  aggregationOfBusinessSystemPartnerSystem

{- Participant Business System: -}
-- Aggregate Member : Participant Business System
ParticipantBusinessSystem : ClassOfClassOfIndividual
ParticipantBusinessSystem = ClassOfIndividual

-- Membership relation
membershipOfParticipantBusinessSystem :  Linkage BusinessSystemEnvironment ParticipantBusinessSystem
membershipOfParticipantBusinessSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSystemParticipantBusinessSystem :  Linkage ParticipantBusinessSystem BusinessSystem
aggregationOfBusinessSystemParticipantBusinessSystem = aggregationOfBuildingBlock

{- participantBusinessSystem : derived relation obtained by composing
   membershipOfParticipantBusinessSystem and aggregationOfBusinessSystemParticipantBusinessSystem
   It directly links an Business System Environment to the final aggregated BusinessSystem
   hiding the reifying ParticipantBusinessSystem
-}
participantBusinessSystem : Linkage BusinessSystemEnvironment BusinessSystem
participantBusinessSystem = membershipOfParticipantBusinessSystem  ∘  aggregationOfBusinessSystemParticipantBusinessSystem
