{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System Deployment Environment: 
An Application System Deployment Environment  describes one possible integration context for an Application System Deployment Architecture. It contains the subject application deployment architecture and the partner deployment architectures it must be integrated with, meaning it must communicates with via technical connections (with communication protocols, port numbers...).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0faf549b640bbfea where -- ========== Application System Deployment Environment

open import Agda.Primitive
open import SysFEAT.EA.108442775fce4918 public -- Software Deployment Environment
open import SysFEAT.EA.1084480e5fce4ccb public -- Application System Deployment Architecture

ApplicationSystemDeploymentEnvironment : ClassOfClassOfBoundedIndividual
ApplicationSystemDeploymentEnvironment = ClassOfBoundedIndividual

--  ApplicationSystemDeploymentEnvironment is subTypeOf SOftwareDeploymentEnvironment
st-0faf54a2640bc032 : ApplicationSystemDeploymentEnvironment ⊏ₑ SOftwareDeploymentEnvironment
st-0faf54a2640bc032 = polySubTypeOf-identity

-- == Relationships =======================

{- Partner Deployment Architecture: -}
-- Aggregate Member : Partner Deployment Architecture
PartnerDeploymentArchitecture : ClassOfClassOfIndividual
PartnerDeploymentArchitecture = ClassOfIndividual

-- Membership relation
membershipOfPartnerDeploymentArchitecture :  Linkage ApplicationSystemDeploymentEnvironment PartnerDeploymentArchitecture
membershipOfPartnerDeploymentArchitecture = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSystemDeploymentArchitecturePartnerDeploymentArchitecture :  Linkage PartnerDeploymentArchitecture ApplicationSystemDeploymentArchitecture
aggregationOfApplicationSystemDeploymentArchitecturePartnerDeploymentArchitecture = aggregationOfBuildingBlock

{- partnerDeploymentArchitecture : derived relation obtained by composing
   membershipOfPartnerDeploymentArchitecture and aggregationOfApplicationSystemDeploymentArchitecturePartnerDeploymentArchitecture
   It directly links an Application System Deployment Environment to the final aggregated ApplicationSystemDeploymentArchitecture
   hiding the reifying PartnerDeploymentArchitecture
-}
partnerDeploymentArchitecture : Linkage ApplicationSystemDeploymentEnvironment ApplicationSystemDeploymentArchitecture
partnerDeploymentArchitecture = membershipOfPartnerDeploymentArchitecture  ∘  aggregationOfApplicationSystemDeploymentArchitecturePartnerDeploymentArchitecture

{- Subject Application Deployment: -}
-- Aggregate Member : Subject Application Deployment
SubjectApplicationDeployment : ClassOfClassOfIndividual
SubjectApplicationDeployment = ClassOfIndividual

-- Membership relation
membershipOfSubjectApplicationDeployment :  Linkage ApplicationSystemDeploymentEnvironment SubjectApplicationDeployment
membershipOfSubjectApplicationDeployment = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSystemDeploymentArchitectureSubjectApplicationDeployment :  Linkage SubjectApplicationDeployment ApplicationSystemDeploymentArchitecture
aggregationOfApplicationSystemDeploymentArchitectureSubjectApplicationDeployment = aggregationOfBuildingBlock

{- subjectApplicationDeployment : derived relation obtained by composing
   membershipOfSubjectApplicationDeployment and aggregationOfApplicationSystemDeploymentArchitectureSubjectApplicationDeployment
   It directly links an Application System Deployment Environment to the final aggregated ApplicationSystemDeploymentArchitecture
   hiding the reifying SubjectApplicationDeployment
-}
subjectApplicationDeployment : Linkage ApplicationSystemDeploymentEnvironment ApplicationSystemDeploymentArchitecture
subjectApplicationDeployment = membershipOfSubjectApplicationDeployment  ∘  aggregationOfApplicationSystemDeploymentArchitectureSubjectApplicationDeployment
