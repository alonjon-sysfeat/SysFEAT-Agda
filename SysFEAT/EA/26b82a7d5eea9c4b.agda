{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System of System Environment: 
A System of System Environment is an operating context which defines the interactions (Business Service Channel) of a System of Systems with its partners (Partner Resource Architecture).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.26b82a7d5eea9c4b where -- ========== System of System Environment

open import Agda.Primitive
open import SysFEAT.EA.2b6f33a561bae7ab public -- Business Agent Environment
open import SysFEAT.EA.46195775560d4ec0 public -- System of Systems

SystemOfSystemEnvironment : ClassOfClassOfBoundedIndividual
SystemOfSystemEnvironment = ClassOfBoundedIndividual

--  SystemOfSystemEnvironment is subTypeOf BusinessAgentEnvironment
st-ca9deca05fcf4aae : SystemOfSystemEnvironment ⊏ₑ BusinessAgentEnvironment
st-ca9deca05fcf4aae = polySubTypeOf-identity

-- == Relationships =======================

{- Partner Resource Architecture: -}
-- Aggregate Member : Partner Resource Architecture
PartnerResourceArchitecture : ClassOfClassOfIndividual
PartnerResourceArchitecture = ClassOfIndividual

-- Membership relation
membershipOfPartnerResourceArchitecture :  Linkage SystemOfSystemEnvironment PartnerResourceArchitecture
membershipOfPartnerResourceArchitecture = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSystemOfSystemsPartnerResourceArchitecture :  Linkage PartnerResourceArchitecture SystemOfSystems
aggregationOfSystemOfSystemsPartnerResourceArchitecture = aggregationOfBuildingBlock

{- partnerResourceArchitecture : derived relation obtained by composing
   membershipOfPartnerResourceArchitecture and aggregationOfSystemOfSystemsPartnerResourceArchitecture
   It directly links an System of System Environment to the final aggregated SystemOfSystems
   hiding the reifying PartnerResourceArchitecture
-}
partnerResourceArchitecture : Linkage SystemOfSystemEnvironment SystemOfSystems
partnerResourceArchitecture = membershipOfPartnerResourceArchitecture  ∘  aggregationOfSystemOfSystemsPartnerResourceArchitecture

{- Subject Resource Architecture: -}
-- Aggregate Member : Subject Resource Architecture
SubjectResourceArchitecture : ClassOfClassOfIndividual
SubjectResourceArchitecture = ClassOfIndividual

-- Membership relation
membershipOfSubjectResourceArchitecture :  Linkage SystemOfSystemEnvironment SubjectResourceArchitecture
membershipOfSubjectResourceArchitecture = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSystemOfSystemsSubjectResourceArchitecture :  Linkage SubjectResourceArchitecture SystemOfSystems
aggregationOfSystemOfSystemsSubjectResourceArchitecture = aggregationOfBuildingBlock

{- subjectResourceArchitecture : derived relation obtained by composing
   membershipOfSubjectResourceArchitecture and aggregationOfSystemOfSystemsSubjectResourceArchitecture
   It directly links an System of System Environment to the final aggregated SystemOfSystems
   hiding the reifying SubjectResourceArchitecture
-}
subjectResourceArchitecture : Linkage SystemOfSystemEnvironment SystemOfSystems
subjectResourceArchitecture = membershipOfSubjectResourceArchitecture  ∘  aggregationOfSystemOfSystemsSubjectResourceArchitecture
