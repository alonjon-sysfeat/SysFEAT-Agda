{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System Environment: 
An Application System Environment is an operating context in which an Application System defines its interactions with its partners (Partner System) in the form of API connections (Software Connection).It also represents End Users that interact with the system.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d6cd260b5ab9886c where -- ========== Application System Environment

open import Agda.Primitive
open import SysFEAT.EA.25c0a25061e2fd5a public -- Software System Environment
open import SysFEAT.EA.46194ca7560d3a45 public -- Application System

ApplicationSystemEnvironment : ClassOfClassOfBoundedIndividual
ApplicationSystemEnvironment = ClassOfBoundedIndividual

--  ApplicationSystemEnvironment is subTypeOf SOftwareSystemEnvironment
st-d6cd266f5ab988af : ApplicationSystemEnvironment ⊏ₑ SOftwareSystemEnvironment
st-d6cd266f5ab988af = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized System Environment: -}
specializedSystemEnvironment :  Linkage ApplicationSystemEnvironment ApplicationSystemEnvironment
specializedSystemEnvironment = make_subTypeOf "Specialized System Environment" "specializedSystemEnvironment"


{- Subject System: -}
-- Aggregate Member : Subject System
SubjectSystem : ClassOfClassOfIndividual
SubjectSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSystem :  Linkage ApplicationSystemEnvironment SubjectSystem
membershipOfSubjectSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSystemSubjectSystem :  Linkage SubjectSystem ApplicationSystem
aggregationOfApplicationSystemSubjectSystem = aggregationOfBuildingBlock

{- subjectSystem : derived relation obtained by composing
   membershipOfSubjectSystem and aggregationOfApplicationSystemSubjectSystem
   It directly links an Application System Environment to the final aggregated ApplicationSystem
   hiding the reifying SubjectSystem
-}
subjectSystem : Linkage ApplicationSystemEnvironment ApplicationSystem
subjectSystem = membershipOfSubjectSystem  ∘  aggregationOfApplicationSystemSubjectSystem

{- Partner System: -}
-- Aggregate Member : Partner System
PartnerSystem : ClassOfClassOfIndividual
PartnerSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSystem :  Linkage ApplicationSystemEnvironment PartnerSystem
membershipOfPartnerSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSystemPartnerSystem :  Linkage PartnerSystem ApplicationSystem
aggregationOfApplicationSystemPartnerSystem = aggregationOfBuildingBlock

{- partnerSystem : derived relation obtained by composing
   membershipOfPartnerSystem and aggregationOfApplicationSystemPartnerSystem
   It directly links an Application System Environment to the final aggregated ApplicationSystem
   hiding the reifying PartnerSystem
-}
partnerSystem : Linkage ApplicationSystemEnvironment ApplicationSystem
partnerSystem = membershipOfPartnerSystem  ∘  aggregationOfApplicationSystemPartnerSystem
