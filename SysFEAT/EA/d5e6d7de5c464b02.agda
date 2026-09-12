{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Deployment Environment: 
An Application Deployment Environment  describes one possible integration context for an Application Deployment Architecture. It contains the subject application deployment architecture and the partner deployment architectures it must be integrated with, meaning it must communicates with via technical connections (with communication protocols, port numbers...).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d5e6d7de5c464b02 where -- ========== Application Deployment Environment

open import Agda.Primitive
open import SysFEAT.EA.108442775fce4918 public -- Software Deployment Environment
open import SysFEAT.EA.d5e6d7c65c464ae3 public -- Application Deployment Architecture

ApplicationDeploymentEnvironment : ClassOfClassOfBoundedIndividual
ApplicationDeploymentEnvironment = ClassOfBoundedIndividual

--  ApplicationDeploymentEnvironment is subTypeOf SOftwareDeploymentEnvironment
st-d5e6db6b5c46514d : ApplicationDeploymentEnvironment ⊏ₑ SOftwareDeploymentEnvironment
st-d5e6db6b5c46514d = polySubTypeOf-identity

-- == Relationships =======================

{- Subject Application Deployment: -}
-- Aggregate Member : Subject Application Deployment
SubjectApplicationDeployment : ClassOfClassOfIndividual
SubjectApplicationDeployment = ClassOfIndividual

-- Membership relation
membershipOfSubjectApplicationDeployment :  Linkage ApplicationDeploymentEnvironment SubjectApplicationDeployment
membershipOfSubjectApplicationDeployment = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationDeploymentArchitectureSubjectApplicationDeployment :  Linkage SubjectApplicationDeployment ApplicationDeploymentArchitecture
aggregationOfApplicationDeploymentArchitectureSubjectApplicationDeployment = aggregationOfBuildingBlock

{- subjectApplicationDeployment : derived relation obtained by composing
   membershipOfSubjectApplicationDeployment and aggregationOfApplicationDeploymentArchitectureSubjectApplicationDeployment
   It directly links an Application Deployment Environment to the final aggregated ApplicationDeploymentArchitecture
   hiding the reifying SubjectApplicationDeployment
-}
subjectApplicationDeployment : Linkage ApplicationDeploymentEnvironment ApplicationDeploymentArchitecture
subjectApplicationDeployment = membershipOfSubjectApplicationDeployment  ∘  aggregationOfApplicationDeploymentArchitectureSubjectApplicationDeployment

{- Partner Deployment Architecture: -}
-- Aggregate Member : Partner Deployment Architecture
PartnerDeploymentArchitecture : ClassOfClassOfIndividual
PartnerDeploymentArchitecture = ClassOfIndividual

-- Membership relation
membershipOfPartnerDeploymentArchitecture :  Linkage ApplicationDeploymentEnvironment PartnerDeploymentArchitecture
membershipOfPartnerDeploymentArchitecture = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationDeploymentArchitecturePartnerDeploymentArchitecture :  Linkage PartnerDeploymentArchitecture ApplicationDeploymentArchitecture
aggregationOfApplicationDeploymentArchitecturePartnerDeploymentArchitecture = aggregationOfBuildingBlock

{- partnerDeploymentArchitecture : derived relation obtained by composing
   membershipOfPartnerDeploymentArchitecture and aggregationOfApplicationDeploymentArchitecturePartnerDeploymentArchitecture
   It directly links an Application Deployment Environment to the final aggregated ApplicationDeploymentArchitecture
   hiding the reifying PartnerDeploymentArchitecture
-}
partnerDeploymentArchitecture : Linkage ApplicationDeploymentEnvironment ApplicationDeploymentArchitecture
partnerDeploymentArchitecture = membershipOfPartnerDeploymentArchitecture  ∘  aggregationOfApplicationDeploymentArchitecturePartnerDeploymentArchitecture
