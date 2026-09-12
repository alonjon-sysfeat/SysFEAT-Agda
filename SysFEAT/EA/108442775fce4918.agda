{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Deployment Environment: 
A Software Deployment Environment describes a possible integration context for a Software Deployment Architecture.It contains the subject Business Software System deployment architecture and the partner deployment architectures it must be integrated with, meaning it must communicates with via technical connections (with communication protocols, port numbers...).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.108442775fce4918 where -- ========== Software Deployment Environment

open import Agda.Primitive
open import SysFEAT.SOF.d6cd0fd95ab9744b public -- Agent Type Environment
open import SysFEAT.EA.26b8382f5eeae265 public -- Technology Interface
open import SysFEAT.EA.24035cc65fc7ad7f public -- Concrete Software System

SOftwareDeploymentEnvironment : ClassOfClassOfBoundedIndividual
SOftwareDeploymentEnvironment = ClassOfBoundedIndividual

--  SOftwareDeploymentEnvironment is subTypeOf AgentTypeEnvironment
st-1084427d5fce4982 : SOftwareDeploymentEnvironment ⊏ₑ AgentTypeEnvironment
st-1084427d5fce4982 = polySubTypeOf-identity

-- == Relationships =======================

{- Technical Service Channel: -}
-- Aggregate Member : Technical Service Channel
TechnicalServiceChannel : ClassOfClassOfIndividual
TechnicalServiceChannel = ClassOfIndividual

-- Membership relation
membershipOfTechnicalServiceChannel :  Linkage SOftwareDeploymentEnvironment TechnicalServiceChannel
membershipOfTechnicalServiceChannel = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTechnologyInterfaceTechnicalServiceChannel :  Linkage TechnicalServiceChannel TechnologyInterface
aggregationOfTechnologyInterfaceTechnicalServiceChannel = aggregationOfBuildingBlock

{- technicalServiceChannel : derived relation obtained by composing
   membershipOfTechnicalServiceChannel and aggregationOfTechnologyInterfaceTechnicalServiceChannel
   It directly links an Software Deployment Environment to the final aggregated TechnologyInterface
   hiding the reifying TechnicalServiceChannel
-}
technicalServiceChannel : Linkage SOftwareDeploymentEnvironment TechnologyInterface
technicalServiceChannel = membershipOfTechnicalServiceChannel  ∘  aggregationOfTechnologyInterfaceTechnicalServiceChannel

{- Operating Technical Artifact: -}
-- Aggregate Member : Operating Technical Artifact
OperatingTechnicalArtifact : ClassOfClassOfIndividual
OperatingTechnicalArtifact = ClassOfIndividual

-- Membership relation
membershipOfOperatingTechnicalArtifact :  Linkage SOftwareDeploymentEnvironment OperatingTechnicalArtifact
membershipOfOperatingTechnicalArtifact = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConcreteSOftwareSystemOperatingTechnicalArtifact :  Linkage OperatingTechnicalArtifact ConcreteSOftwareSystem
aggregationOfConcreteSOftwareSystemOperatingTechnicalArtifact = aggregationOfBuildingBlock

{- operatingTechnicalArtifact : derived relation obtained by composing
   membershipOfOperatingTechnicalArtifact and aggregationOfConcreteSOftwareSystemOperatingTechnicalArtifact
   It directly links an Software Deployment Environment to the final aggregated ConcreteSOftwareSystem
   hiding the reifying OperatingTechnicalArtifact
-}
operatingTechnicalArtifact : Linkage SOftwareDeploymentEnvironment ConcreteSOftwareSystem
operatingTechnicalArtifact = membershipOfOperatingTechnicalArtifact  ∘  aggregationOfConcreteSOftwareSystemOperatingTechnicalArtifact

{- Subject Technical Artifact: -}
-- Aggregate Member : Subject Technical Artifact
SubjectTechnicalArtifact : ClassOfClassOfIndividual
SubjectTechnicalArtifact = ClassOfIndividual

-- Membership relation
membershipOfSubjectTechnicalArtifact :  Linkage SOftwareDeploymentEnvironment SubjectTechnicalArtifact
membershipOfSubjectTechnicalArtifact = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConcreteSOftwareSystemSubjectTechnicalArtifact :  Linkage SubjectTechnicalArtifact ConcreteSOftwareSystem
aggregationOfConcreteSOftwareSystemSubjectTechnicalArtifact = aggregationOfBuildingBlock

{- subjectTechnicalArtifact : derived relation obtained by composing
   membershipOfSubjectTechnicalArtifact and aggregationOfConcreteSOftwareSystemSubjectTechnicalArtifact
   It directly links an Software Deployment Environment to the final aggregated ConcreteSOftwareSystem
   hiding the reifying SubjectTechnicalArtifact
-}
subjectTechnicalArtifact : Linkage SOftwareDeploymentEnvironment ConcreteSOftwareSystem
subjectTechnicalArtifact = membershipOfSubjectTechnicalArtifact  ∘  aggregationOfConcreteSOftwareSystemSubjectTechnicalArtifact

{- Partner Technical Artifact: -}
-- Aggregate Member : Partner Technical Artifact
PartnerTechnicalArtifact : ClassOfClassOfIndividual
PartnerTechnicalArtifact = ClassOfIndividual

-- Membership relation
membershipOfPartnerTechnicalArtifact :  Linkage SOftwareDeploymentEnvironment PartnerTechnicalArtifact
membershipOfPartnerTechnicalArtifact = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConcreteSOftwareSystemPartnerTechnicalArtifact :  Linkage PartnerTechnicalArtifact ConcreteSOftwareSystem
aggregationOfConcreteSOftwareSystemPartnerTechnicalArtifact = aggregationOfBuildingBlock

{- partnerTechnicalArtifact : derived relation obtained by composing
   membershipOfPartnerTechnicalArtifact and aggregationOfConcreteSOftwareSystemPartnerTechnicalArtifact
   It directly links an Software Deployment Environment to the final aggregated ConcreteSOftwareSystem
   hiding the reifying PartnerTechnicalArtifact
-}
partnerTechnicalArtifact : Linkage SOftwareDeploymentEnvironment ConcreteSOftwareSystem
partnerTechnicalArtifact = membershipOfPartnerTechnicalArtifact  ∘  aggregationOfConcreteSOftwareSystemPartnerTechnicalArtifact
