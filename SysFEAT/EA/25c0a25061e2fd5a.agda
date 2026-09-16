{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software System Environment: 
A Software System Environment is an operating context in which a Business Software System defines its interactions with its partners (Partner System) in the form of API connections (Software Connection).It also represents End Users who interact with the system.

Documentation : https://framework.sysfeat.com/pages/25c0a25061e2fd5a.htm

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
st-25c0a25061e2fd5a-c450d4c261de5f07 : SOftwareSystemEnvironment ⊏ₑ BusinessSystemEnvironment
st-25c0a25061e2fd5a-c450d4c261de5f07 = polySubTypeOf-identity

-- == Relationships =======================

{- Software Connection: -}
-- Aggregate Member : Software Connection
SOftwareConnection : ClassOfClassOfIndividual
SOftwareConnection = ClassOfIndividual

-- Membership relation
membershipOfSOftwareConnection :  Linkage SOftwareSystemEnvironment SOftwareConnection
membershipOfSOftwareConnection = make_upwardNestingRelation "sOftwareConnection membership" "nested sOftwareConnection"

-- Aggregation relation
aggregationOfApplicationInterfaceSOftwareConnection :  Linkage SOftwareConnection ApplicationInterface
aggregationOfApplicationInterfaceSOftwareConnection = make_Relation "ApplicationInterface aggregation" "aggregated ApplicationInterface"

{- sOftwareConnection : derived relation obtained by composing
   membershipOfSOftwareConnection and aggregationOfApplicationInterfaceSOftwareConnection
   It directly links an Software System Environment to the final aggregated ApplicationInterface
   hiding the reifying SOftwareConnection
-}
sOftwareConnection : Linkage SOftwareSystemEnvironment ApplicationInterface
sOftwareConnection = membershipOfSOftwareConnection  ∘  aggregationOfApplicationInterfaceSOftwareConnection

postulate -- sOftwareConnection is subTypeOf businessServiceChannel
  st-25c1a7cd61e20b29-2b6f436f61bafb0b  : sOftwareConnection   ⊏⋆ᵣ  businessServiceChannel 


{- Participant Software: -}
-- Aggregate Member : Participant Software
ParticipantSOftware : ClassOfClassOfIndividual
ParticipantSOftware = ClassOfIndividual

-- Membership relation
membershipOfParticipantSOftware :  Linkage SOftwareSystemEnvironment ParticipantSOftware
membershipOfParticipantSOftware = make_upwardNestingRelation "participantSOftware membership" "nested participantSOftware"

-- Aggregation relation
aggregationOfBusinessSOftwareSystemParticipantSOftware :  Linkage ParticipantSOftware BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemParticipantSOftware = make_Relation "BusinessSOftwareSystem aggregation" "aggregated BusinessSOftwareSystem"

{- participantSOftware : derived relation obtained by composing
   membershipOfParticipantSOftware and aggregationOfBusinessSOftwareSystemParticipantSOftware
   It directly links an Software System Environment to the final aggregated BusinessSOftwareSystem
   hiding the reifying ParticipantSOftware
-}
participantSOftware : Linkage SOftwareSystemEnvironment BusinessSOftwareSystem
participantSOftware = membershipOfParticipantSOftware  ∘  aggregationOfBusinessSOftwareSystemParticipantSOftware

postulate -- participantSOftware is subTypeOf participantBusinessSystem
  st-25c1a63d61e206d7-c450d63661de652a  : participantSOftware   ⊏⋆ᵣ  participantBusinessSystem 
postulate -- participantSOftware is subTypeOf participantEnterpriseAgent
  st-25c1a63d61e206d7-2b6f42fc61baf9b7  : participantSOftware   ⊏⋆ᵣ  participantEnterpriseAgent 


{- Subject Software System: -}
-- Aggregate Member : Subject Software System
SubjectSOftwareSystem : ClassOfClassOfIndividual
SubjectSOftwareSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSOftwareSystem :  Linkage SOftwareSystemEnvironment SubjectSOftwareSystem
membershipOfSubjectSOftwareSystem = make_upwardNestingRelation "subjectSOftwareSystem membership" "nested subjectSOftwareSystem"

-- Aggregation relation
aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem :  Linkage SubjectSOftwareSystem BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem = make_Relation "BusinessSOftwareSystem aggregation" "aggregated BusinessSOftwareSystem"

{- subjectSOftwareSystem : derived relation obtained by composing
   membershipOfSubjectSOftwareSystem and aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem
   It directly links an Software System Environment to the final aggregated BusinessSOftwareSystem
   hiding the reifying SubjectSOftwareSystem
-}
subjectSOftwareSystem : Linkage SOftwareSystemEnvironment BusinessSOftwareSystem
subjectSOftwareSystem = membershipOfSubjectSOftwareSystem  ∘  aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem

postulate -- subjectSOftwareSystem is subTypeOf subjectSystem
  st-25c1a65861e2077a-c450d59061de6127  : subjectSOftwareSystem   ⊏⋆ᵣ  subjectSystem 
postulate -- subjectSOftwareSystem is subTypeOf participantSOftware
  st-25c1a65861e2077a-25c1a63d61e206d7  : subjectSOftwareSystem   ⊏⋆ᵣ  participantSOftware 


{- Partner Software System: -}
-- Aggregate Member : Partner Software System
PartnerSOftwareSystem : ClassOfClassOfIndividual
PartnerSOftwareSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSOftwareSystem :  Linkage SOftwareSystemEnvironment PartnerSOftwareSystem
membershipOfPartnerSOftwareSystem = make_upwardNestingRelation "partnerSOftwareSystem membership" "nested partnerSOftwareSystem"

-- Aggregation relation
aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem :  Linkage PartnerSOftwareSystem BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem = make_Relation "BusinessSOftwareSystem aggregation" "aggregated BusinessSOftwareSystem"

{- partnerSOftwareSystem : derived relation obtained by composing
   membershipOfPartnerSOftwareSystem and aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem
   It directly links an Software System Environment to the final aggregated BusinessSOftwareSystem
   hiding the reifying PartnerSOftwareSystem
-}
partnerSOftwareSystem : Linkage SOftwareSystemEnvironment BusinessSOftwareSystem
partnerSOftwareSystem = membershipOfPartnerSOftwareSystem  ∘  aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem

postulate -- partnerSOftwareSystem is subTypeOf partnerSystem
  st-25c1a6bc61e20826-c450d5b361de622e  : partnerSOftwareSystem   ⊏⋆ᵣ  partnerSystem 
postulate -- partnerSOftwareSystem is subTypeOf participantSOftware
  st-25c1a6bc61e20826-25c1a63d61e206d7  : partnerSOftwareSystem   ⊏⋆ᵣ  participantSOftware 


{- End User: 
An End User is a Org-Unit Type who actually uses a particular Business Software System.
-}
-- Aggregate Member : End User
EndUser : ClassOfClassOfIndividual
EndUser = ClassOfIndividual

-- Membership relation
membershipOfEndUser :  Linkage SOftwareSystemEnvironment EndUser
membershipOfEndUser = make_upwardNestingRelation "endUser membership" "nested endUser"

-- Aggregation relation
aggregationOfOrgUnitTypeEndUser :  Linkage EndUser OrgUnitType
aggregationOfOrgUnitTypeEndUser = make_Relation "OrgUnitType aggregation" "aggregated OrgUnitType"

{- endUser : derived relation obtained by composing
   membershipOfEndUser and aggregationOfOrgUnitTypeEndUser
   It directly links an Software System Environment to the final aggregated OrgUnitType
   hiding the reifying EndUser
-}
endUser : Linkage SOftwareSystemEnvironment OrgUnitType
endUser = membershipOfEndUser  ∘  aggregationOfOrgUnitTypeEndUser

postulate -- endUser is subTypeOf participantSOftware
  st-2dcea8705fc4827c-25c1a63d61e206d7  : endUser   ⊏⋆ᵣ  participantSOftware 

