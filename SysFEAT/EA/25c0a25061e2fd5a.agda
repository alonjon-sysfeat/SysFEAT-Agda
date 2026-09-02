{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software System Environment: 
A Software System Environment is an operating context in which a Business Software System defines its interactions with its partners (Partner System) in the form of API connections (Software Connection).It also represents End Users who interact with the system.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.25c0a25061e2fd5a where -- ========== Software System Environment

open import Agda.Primitive
open import SysFEAT.EA.c450d4c261de5f07 public -- Business System Environment
open import SysFEAT.EA.9dce9f8d5ec76311 public -- Application Interface
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type

SOftwareSystemEnvironment : ClassOfClassOfBoundedIndividual
SOftwareSystemEnvironment = ClassOfBoundedIndividual

--  SOftwareSystemEnvironment is subTypeOf BusinessSystemEnvironment
st-25c0a27261e2fe02 : SOftwareSystemEnvironment ⊏ₑ BusinessSystemEnvironment
st-25c0a27261e2fe02 = polySubTypeOf-identity

-- == Relationships =======================

{- Software Connection: -}
-- Aggregate Member : Software Connection
SOftwareConnection : ClassOfClassOfIndividual
SOftwareConnection = ClassOfIndividual

-- Membership relation
membershipOfSOftwareConnection :  Linkage SOftwareSystemEnvironment SOftwareConnection
membershipOfSOftwareConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationInterfaceSOftwareConnection :  Linkage SOftwareConnection ApplicationInterface
aggregationOfApplicationInterfaceSOftwareConnection = aggregationOfBuildingBlock

{- sOftwareConnection : derived relation obtained by composing
   membershipOfSOftwareConnection and aggregationOfApplicationInterfaceSOftwareConnection
   It directly links an Software System Environment to the final aggregated ApplicationInterface
   hiding the reifying SOftwareConnection
-}
sOftwareConnection : Linkage SOftwareSystemEnvironment ApplicationInterface
sOftwareConnection = membershipOfSOftwareConnection  ∘  aggregationOfApplicationInterfaceSOftwareConnection

{- Participant Software: -}
-- Aggregate Member : Participant Software
ParticipantSOftware : ClassOfClassOfIndividual
ParticipantSOftware = ClassOfIndividual

-- Membership relation
membershipOfParticipantSOftware :  Linkage SOftwareSystemEnvironment ParticipantSOftware
membershipOfParticipantSOftware = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSOftwareSystemParticipantSOftware :  Linkage ParticipantSOftware BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemParticipantSOftware = aggregationOfBuildingBlock

{- participantSOftware : derived relation obtained by composing
   membershipOfParticipantSOftware and aggregationOfBusinessSOftwareSystemParticipantSOftware
   It directly links an Software System Environment to the final aggregated BusinessSOftwareSystem
   hiding the reifying ParticipantSOftware
-}
participantSOftware : Linkage SOftwareSystemEnvironment BusinessSOftwareSystem
participantSOftware = membershipOfParticipantSOftware  ∘  aggregationOfBusinessSOftwareSystemParticipantSOftware

{- Subject Software System: -}
-- Aggregate Member : Subject Software System
SubjectSOftwareSystem : ClassOfClassOfIndividual
SubjectSOftwareSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSOftwareSystem :  Linkage SOftwareSystemEnvironment SubjectSOftwareSystem
membershipOfSubjectSOftwareSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem :  Linkage SubjectSOftwareSystem BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem = aggregationOfBuildingBlock

{- subjectSOftwareSystem : derived relation obtained by composing
   membershipOfSubjectSOftwareSystem and aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem
   It directly links an Software System Environment to the final aggregated BusinessSOftwareSystem
   hiding the reifying SubjectSOftwareSystem
-}
subjectSOftwareSystem : Linkage SOftwareSystemEnvironment BusinessSOftwareSystem
subjectSOftwareSystem = membershipOfSubjectSOftwareSystem  ∘  aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem

{- Partner Software System: -}
-- Aggregate Member : Partner Software System
PartnerSOftwareSystem : ClassOfClassOfIndividual
PartnerSOftwareSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSOftwareSystem :  Linkage SOftwareSystemEnvironment PartnerSOftwareSystem
membershipOfPartnerSOftwareSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem :  Linkage PartnerSOftwareSystem BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem = aggregationOfBuildingBlock

{- partnerSOftwareSystem : derived relation obtained by composing
   membershipOfPartnerSOftwareSystem and aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem
   It directly links an Software System Environment to the final aggregated BusinessSOftwareSystem
   hiding the reifying PartnerSOftwareSystem
-}
partnerSOftwareSystem : Linkage SOftwareSystemEnvironment BusinessSOftwareSystem
partnerSOftwareSystem = membershipOfPartnerSOftwareSystem  ∘  aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem

{- End User: 
An End User is a Org-Unit Type who actually uses a particular Business Software System.
-}
-- Aggregate Member : End User
EndUser : ClassOfClassOfIndividual
EndUser = ClassOfIndividual

-- Membership relation
membershipOfEndUser :  Linkage SOftwareSystemEnvironment EndUser
membershipOfEndUser = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrgUnitTypeEndUser :  Linkage EndUser OrgUnitType
aggregationOfOrgUnitTypeEndUser = aggregationOfBuildingBlock

{- endUser : derived relation obtained by composing
   membershipOfEndUser and aggregationOfOrgUnitTypeEndUser
   It directly links an Software System Environment to the final aggregated OrgUnitType
   hiding the reifying EndUser
-}
endUser : Linkage SOftwareSystemEnvironment OrgUnitType
endUser = membershipOfEndUser  ∘  aggregationOfOrgUnitTypeEndUser
