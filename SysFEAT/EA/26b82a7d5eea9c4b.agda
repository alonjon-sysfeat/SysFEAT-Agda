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

-- == Relationships =======================

{- Partner Resource Architecture: -}
-- Aggregate Member : Partner Resource Architecture
PartnerResourceArchitecture : ClassOfClassOfIndividual
PartnerResourceArchitecture = ClassOfIndividual

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

postulate -- partnerResourceArchitecture is subTypeOf partnerResourceAgent
  st-26b8376c5eeae057-2b6f34c861bae941  : partnerResourceArchitecture   ⊏⋆ᵣ  partnerResourceAgent 
postulate -- partnerResourceArchitecture is subTypeOf participantEnterpriseAgent
  st-26b8376c5eeae057-2b6f42fc61baf9b7  : partnerResourceArchitecture   ⊏⋆ᵣ  participantEnterpriseAgent 


{- Subject Resource Architecture: -}
-- Aggregate Member : Subject Resource Architecture
SubjectResourceArchitecture : ClassOfClassOfIndividual
SubjectResourceArchitecture = ClassOfIndividual

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

postulate -- subjectResourceArchitecture is subTypeOf subjectResourceAgent
  st-26b837865eeae115-2b6f350061baea62  : subjectResourceArchitecture   ⊏⋆ᵣ  subjectResourceAgent 
postulate -- subjectResourceArchitecture is subTypeOf participantEnterpriseAgent
  st-26b837865eeae115-2b6f42fc61baf9b7  : subjectResourceArchitecture   ⊏⋆ᵣ  participantEnterpriseAgent 

