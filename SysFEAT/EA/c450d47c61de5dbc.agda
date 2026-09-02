{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Environment: 
An Application Environment is an operating context in which an Application defines its interactions with its partners (Partner Application) in the form of  API connections (Software Connection).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c450d47c61de5dbc where -- ========== Application Environment

open import Agda.Primitive
open import SysFEAT.EA.25c0a25061e2fd5a public -- Software System Environment
open import SysFEAT.EA.bcebd8e9549144db public -- Application

ApplicationEnvironment : ClassOfClassOfBoundedIndividual
ApplicationEnvironment = ClassOfBoundedIndividual

--  ApplicationEnvironment is subTypeOf SOftwareSystemEnvironment
st-c450d91361de6cdc : ApplicationEnvironment ⊏ₑ SOftwareSystemEnvironment
st-c450d91361de6cdc = polySubTypeOf-identity

-- == Relationships =======================

{- Subject Application: -}
-- Aggregate Member : Subject Application
SubjectApplication : ClassOfClassOfIndividual
SubjectApplication = ClassOfIndividual

-- Membership relation
membershipOfSubjectApplication :  Linkage ApplicationEnvironment SubjectApplication
membershipOfSubjectApplication = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSubjectApplication :  Linkage SubjectApplication Application
aggregationOfApplicationSubjectApplication = aggregationOfBuildingBlock

{- subjectApplication : derived relation obtained by composing
   membershipOfSubjectApplication and aggregationOfApplicationSubjectApplication
   It directly links an Application Environment to the final aggregated Application
   hiding the reifying SubjectApplication
-}
subjectApplication : Linkage ApplicationEnvironment Application
subjectApplication = membershipOfSubjectApplication  ∘  aggregationOfApplicationSubjectApplication

{- Partner Application: -}
-- Aggregate Member : Partner Application
PartnerApplication : ClassOfClassOfIndividual
PartnerApplication = ClassOfIndividual

-- Membership relation
membershipOfPartnerApplication :  Linkage ApplicationEnvironment PartnerApplication
membershipOfPartnerApplication = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationPartnerApplication :  Linkage PartnerApplication Application
aggregationOfApplicationPartnerApplication = aggregationOfBuildingBlock

{- partnerApplication : derived relation obtained by composing
   membershipOfPartnerApplication and aggregationOfApplicationPartnerApplication
   It directly links an Application Environment to the final aggregated Application
   hiding the reifying PartnerApplication
-}
partnerApplication : Linkage ApplicationEnvironment Application
partnerApplication = membershipOfPartnerApplication  ∘  aggregationOfApplicationPartnerApplication
