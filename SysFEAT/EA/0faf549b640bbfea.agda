{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System Deployment Environment: 
An Application System Deployment Environment  describes one possible integration context for an Application System Deployment Architecture. It contains the subject application deployment architecture and the partner deployment architectures it must be integrated with, meaning it must communicates with via technical connections (with communication protocols, port numbers...).

Documentation : https://framework.sysfeat.com/pages/0faf549b640bbfea.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0faf549b640bbfea where -- ========== Application System Deployment Environment

open import Agda.Primitive
open import SysFEAT.EA.108442775fce4918 public -- Software Deployment Environment
open import SysFEAT.EA.1084480e5fce4ccb public -- Application System Deployment Architecture

ApplicationSystemDeploymentEnvironment : ClassOfClassOfBoundedIndividual
ApplicationSystemDeploymentEnvironment = ClassOfBoundedIndividual


--  ApplicationSystemDeploymentEnvironment is subTypeOf SOftwareDeploymentEnvironment
st-0faf549b640bbfea-108442775fce4918 : ApplicationSystemDeploymentEnvironment ⊏ₑ SOftwareDeploymentEnvironment
st-0faf549b640bbfea-108442775fce4918 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Partner Deployment Architecture: -}
-- Aggregate Member : Partner Deployment Architecture
PartnerDeploymentArchitecture : ClassOfClassOfBoundedIndividual
PartnerDeploymentArchitecture = ClassOfBoundedIndividual



--  PartnerDeploymentArchitecture is subTypeOf ApplicationSystemDeploymentArchitecture
st-0faf54b3640bc05d-1084480e5fce4ccb : PartnerDeploymentArchitecture ⊏ₑ ApplicationSystemDeploymentArchitecture
st-0faf54b3640bc05d-1084480e5fce4ccb = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerDeploymentArchitecture :  Linkage ApplicationSystemDeploymentEnvironment PartnerDeploymentArchitecture
membershipOfPartnerDeploymentArchitecture = make_upwardNestingRelation "partnerDeploymentArchitecture membership" "nested partnerDeploymentArchitecture"

-- Aggregation relation
aggregationOfApplicationSystemDeploymentArchitecturePartnerDeploymentArchitecture :  Linkage PartnerDeploymentArchitecture ApplicationSystemDeploymentArchitecture
aggregationOfApplicationSystemDeploymentArchitecturePartnerDeploymentArchitecture = make_Relation "ApplicationSystemDeploymentArchitecture aggregation" "aggregated ApplicationSystemDeploymentArchitecture"

{- partnerDeploymentArchitecture : derived relation obtained by composing
   membershipOfPartnerDeploymentArchitecture and aggregationOfApplicationSystemDeploymentArchitecturePartnerDeploymentArchitecture
   It directly links an Application System Deployment Environment to the final aggregated ApplicationSystemDeploymentArchitecture
   hiding the reifying PartnerDeploymentArchitecture
-}
partnerDeploymentArchitecture : Linkage ApplicationSystemDeploymentEnvironment ApplicationSystemDeploymentArchitecture
partnerDeploymentArchitecture = membershipOfPartnerDeploymentArchitecture  ∘  aggregationOfApplicationSystemDeploymentArchitecturePartnerDeploymentArchitecture



-- -------------------------------------------------------------------------------------------- 
{- Subject Application Deployment: -}
-- Aggregate Member : Subject Application Deployment
SubjectApplicationDeployment : ClassOfClassOfBoundedIndividual
SubjectApplicationDeployment = ClassOfBoundedIndividual



--  SubjectApplicationDeployment is subTypeOf ApplicationSystemDeploymentArchitecture
st-0faf54c3640bc0d4-1084480e5fce4ccb : SubjectApplicationDeployment ⊏ₑ ApplicationSystemDeploymentArchitecture
st-0faf54c3640bc0d4-1084480e5fce4ccb = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectApplicationDeployment :  Linkage ApplicationSystemDeploymentEnvironment SubjectApplicationDeployment
membershipOfSubjectApplicationDeployment = make_upwardNestingRelation "subjectApplicationDeployment membership" "nested subjectApplicationDeployment"

-- Aggregation relation
aggregationOfApplicationSystemDeploymentArchitectureSubjectApplicationDeployment :  Linkage SubjectApplicationDeployment ApplicationSystemDeploymentArchitecture
aggregationOfApplicationSystemDeploymentArchitectureSubjectApplicationDeployment = make_Relation "ApplicationSystemDeploymentArchitecture aggregation" "aggregated ApplicationSystemDeploymentArchitecture"

{- subjectApplicationDeployment : derived relation obtained by composing
   membershipOfSubjectApplicationDeployment and aggregationOfApplicationSystemDeploymentArchitectureSubjectApplicationDeployment
   It directly links an Application System Deployment Environment to the final aggregated ApplicationSystemDeploymentArchitecture
   hiding the reifying SubjectApplicationDeployment
-}
subjectApplicationDeployment : Linkage ApplicationSystemDeploymentEnvironment ApplicationSystemDeploymentArchitecture
subjectApplicationDeployment = membershipOfSubjectApplicationDeployment  ∘  aggregationOfApplicationSystemDeploymentArchitectureSubjectApplicationDeployment


