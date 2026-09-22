{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System of System Environment: 
A System of System Environment is an operating context which defines the interactions (Business Service Channel) of a System of Systems with its partners (Partner Resource Architecture).

Documentation : https://framework.sysfeat.com/pages/26b82a7d5eea9c4b.htm

External references:
  OMG - UAF - ResourceArchitecture: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#ResourceArchitecture
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.26b82a7d5eea9c4b where -- ========== System of System Environment

open import Agda.Primitive
open import SysFEAT.EA.2b6f33a561bae7ab public -- Business Agent Environment
open import SysFEAT.EA.46195775560d4ec0 public -- System of Systems

SystemOfSystemEnvironment : ClassOfClassOfBoundedIndividual
SystemOfSystemEnvironment = ClassOfBoundedIndividual


--  SystemOfSystemEnvironment is subTypeOf BusinessAgentEnvironment
st-26b82a7d5eea9c4b-2b6f33a561bae7ab : SystemOfSystemEnvironment ⊏ₑ BusinessAgentEnvironment
st-26b82a7d5eea9c4b-2b6f33a561bae7ab = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Partner Resource Architecture: -}
-- Aggregate Member : Partner Resource Architecture
PartnerResourceArchitecture : ClassOfClassOfBoundedIndividual
PartnerResourceArchitecture = ClassOfBoundedIndividual



--  PartnerResourceArchitecture is subTypeOf PartnerResourceAgent
st-26b8376c5eeae057-2b6f34c861bae941 : PartnerResourceArchitecture ⊏ₑ PartnerResourceAgent
st-26b8376c5eeae057-2b6f34c861bae941 = polySubTypeOf-identity

--  PartnerResourceArchitecture is subTypeOf ParticipantEnterpriseAgent
st-26b8376c5eeae057-2b6f42fc61baf9b7 : PartnerResourceArchitecture ⊏ₑ ParticipantEnterpriseAgent
st-26b8376c5eeae057-2b6f42fc61baf9b7 = polySubTypeOf-identity

--  PartnerResourceArchitecture is subTypeOf SystemOfSystems
st-26b8376c5eeae057-46195775560d4ec0 : PartnerResourceArchitecture ⊏ₑ SystemOfSystems
st-26b8376c5eeae057-46195775560d4ec0 = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerResourceArchitecture :  Linkage SystemOfSystemEnvironment PartnerResourceArchitecture
membershipOfPartnerResourceArchitecture = make_upwardNestingRelation "partnerResourceArchitecture membership" "nested partnerResourceArchitecture"

-- Aggregation relation
aggregationOfSystemOfSystemsPartnerResourceArchitecture :  Linkage PartnerResourceArchitecture SystemOfSystems
aggregationOfSystemOfSystemsPartnerResourceArchitecture = make_Relation "SystemOfSystems aggregation" "aggregated SystemOfSystems"

{- partnerResourceArchitecture : derived relation obtained by composing
   membershipOfPartnerResourceArchitecture and aggregationOfSystemOfSystemsPartnerResourceArchitecture
   It directly links an System of System Environment to the final aggregated SystemOfSystems
   hiding the reifying PartnerResourceArchitecture
-}
partnerResourceArchitecture : Linkage SystemOfSystemEnvironment SystemOfSystems
partnerResourceArchitecture = membershipOfPartnerResourceArchitecture  ∘  aggregationOfSystemOfSystemsPartnerResourceArchitecture



-- -------------------------------------------------------------------------------------------- 
{- Subject Resource Architecture: -}
-- Aggregate Member : Subject Resource Architecture
SubjectResourceArchitecture : ClassOfClassOfBoundedIndividual
SubjectResourceArchitecture = ClassOfBoundedIndividual



--  SubjectResourceArchitecture is subTypeOf SubjectResourceAgent
st-26b837865eeae115-2b6f350061baea62 : SubjectResourceArchitecture ⊏ₑ SubjectResourceAgent
st-26b837865eeae115-2b6f350061baea62 = polySubTypeOf-identity

--  SubjectResourceArchitecture is subTypeOf ParticipantEnterpriseAgent
st-26b837865eeae115-2b6f42fc61baf9b7 : SubjectResourceArchitecture ⊏ₑ ParticipantEnterpriseAgent
st-26b837865eeae115-2b6f42fc61baf9b7 = polySubTypeOf-identity

--  SubjectResourceArchitecture is subTypeOf SystemOfSystems
st-26b837865eeae115-46195775560d4ec0 : SubjectResourceArchitecture ⊏ₑ SystemOfSystems
st-26b837865eeae115-46195775560d4ec0 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectResourceArchitecture :  Linkage SystemOfSystemEnvironment SubjectResourceArchitecture
membershipOfSubjectResourceArchitecture = make_upwardNestingRelation "subjectResourceArchitecture membership" "nested subjectResourceArchitecture"

-- Aggregation relation
aggregationOfSystemOfSystemsSubjectResourceArchitecture :  Linkage SubjectResourceArchitecture SystemOfSystems
aggregationOfSystemOfSystemsSubjectResourceArchitecture = make_Relation "SystemOfSystems aggregation" "aggregated SystemOfSystems"

{- subjectResourceArchitecture : derived relation obtained by composing
   membershipOfSubjectResourceArchitecture and aggregationOfSystemOfSystemsSubjectResourceArchitecture
   It directly links an System of System Environment to the final aggregated SystemOfSystems
   hiding the reifying SubjectResourceArchitecture
-}
subjectResourceArchitecture : Linkage SystemOfSystemEnvironment SystemOfSystems
subjectResourceArchitecture = membershipOfSubjectResourceArchitecture  ∘  aggregationOfSystemOfSystemsSubjectResourceArchitecture


