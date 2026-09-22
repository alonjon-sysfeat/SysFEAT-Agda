{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Deployment Environment: 
A Software Deployment Environment describes a possible integration context for a Software Deployment Architecture.It contains the subject Business Software System deployment architecture and the partner deployment architectures it must be integrated with, meaning it must communicates with via technical connections (with communication protocols, port numbers...).

Documentation : https://framework.sysfeat.com/pages/108442775fce4918.htm

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
st-108442775fce4918-d6cd0fd95ab9744b : SOftwareDeploymentEnvironment ⊏ₑ AgentTypeEnvironment
st-108442775fce4918-d6cd0fd95ab9744b = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Technical Service Channel: -}
-- Aggregate Member : Technical Service Channel
TechnicalServiceChannel : ClassOfClassOfIndividual
TechnicalServiceChannel = ClassOfIndividual


--  TechnicalServiceChannel is subTypeOf ServiceChannel
st-1084539e5fce58b5-80be29065fc2a83d : TechnicalServiceChannel ⊏ₑ ServiceChannel
st-1084539e5fce58b5-80be29065fc2a83d = polySubTypeOf-identity

-- Membership relation
membershipOfTechnicalServiceChannel :  Linkage SOftwareDeploymentEnvironment TechnicalServiceChannel
membershipOfTechnicalServiceChannel = make_upwardNestingRelation "technicalServiceChannel membership" "nested technicalServiceChannel"

-- Aggregation relation
aggregationOfTechnologyInterfaceTechnicalServiceChannel :  Linkage TechnicalServiceChannel TechnologyInterface
aggregationOfTechnologyInterfaceTechnicalServiceChannel = make_Relation "TechnologyInterface aggregation" "aggregated TechnologyInterface"

{- technicalServiceChannel : derived relation obtained by composing
   membershipOfTechnicalServiceChannel and aggregationOfTechnologyInterfaceTechnicalServiceChannel
   It directly links an Software Deployment Environment to the final aggregated TechnologyInterface
   hiding the reifying TechnicalServiceChannel
-}
technicalServiceChannel : Linkage SOftwareDeploymentEnvironment TechnologyInterface
technicalServiceChannel = membershipOfTechnicalServiceChannel  ∘  aggregationOfTechnologyInterfaceTechnicalServiceChannel



-- -------------------------------------------------------------------------------------------- 
{- Operating Technical Artifact: -}
-- Aggregate Member : Operating Technical Artifact
OperatingTechnicalArtifact : ClassOfClassOfBoundedIndividual
OperatingTechnicalArtifact = ClassOfBoundedIndividual



--  OperatingTechnicalArtifact is subTypeOf ParticipantAgent
st-108452655fce54ce-80be28965fc2a6b8 : OperatingTechnicalArtifact ⊏ₑ ParticipantAgent
st-108452655fce54ce-80be28965fc2a6b8 = polySubTypeOf-identity

--  OperatingTechnicalArtifact is subTypeOf ConcreteSOftwareSystem
st-108452655fce54ce-24035cc65fc7ad7f : OperatingTechnicalArtifact ⊏ₑ ConcreteSOftwareSystem
st-108452655fce54ce-24035cc65fc7ad7f = polySubTypeOf-identity

-- Membership relation
membershipOfOperatingTechnicalArtifact :  Linkage SOftwareDeploymentEnvironment OperatingTechnicalArtifact
membershipOfOperatingTechnicalArtifact = make_upwardNestingRelation "operatingTechnicalArtifact membership" "nested operatingTechnicalArtifact"

-- Aggregation relation
aggregationOfConcreteSOftwareSystemOperatingTechnicalArtifact :  Linkage OperatingTechnicalArtifact ConcreteSOftwareSystem
aggregationOfConcreteSOftwareSystemOperatingTechnicalArtifact = make_Relation "ConcreteSOftwareSystem aggregation" "aggregated ConcreteSOftwareSystem"

{- operatingTechnicalArtifact : derived relation obtained by composing
   membershipOfOperatingTechnicalArtifact and aggregationOfConcreteSOftwareSystemOperatingTechnicalArtifact
   It directly links an Software Deployment Environment to the final aggregated ConcreteSOftwareSystem
   hiding the reifying OperatingTechnicalArtifact
-}
operatingTechnicalArtifact : Linkage SOftwareDeploymentEnvironment ConcreteSOftwareSystem
operatingTechnicalArtifact = membershipOfOperatingTechnicalArtifact  ∘  aggregationOfConcreteSOftwareSystemOperatingTechnicalArtifact



-- -------------------------------------------------------------------------------------------- 
{- Subject Technical Artifact: -}
-- Aggregate Member : Subject Technical Artifact
SubjectTechnicalArtifact : ClassOfClassOfBoundedIndividual
SubjectTechnicalArtifact = ClassOfBoundedIndividual



--  SubjectTechnicalArtifact is subTypeOf SubjectAgent
st-108452da5fce55f9-fa4ffc205ec86201 : SubjectTechnicalArtifact ⊏ₑ SubjectAgent
st-108452da5fce55f9-fa4ffc205ec86201 = polySubTypeOf-identity

--  SubjectTechnicalArtifact is subTypeOf ConcreteSOftwareSystem
st-108452da5fce55f9-24035cc65fc7ad7f : SubjectTechnicalArtifact ⊏ₑ ConcreteSOftwareSystem
st-108452da5fce55f9-24035cc65fc7ad7f = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectTechnicalArtifact :  Linkage SOftwareDeploymentEnvironment SubjectTechnicalArtifact
membershipOfSubjectTechnicalArtifact = make_upwardNestingRelation "subjectTechnicalArtifact membership" "nested subjectTechnicalArtifact"

-- Aggregation relation
aggregationOfConcreteSOftwareSystemSubjectTechnicalArtifact :  Linkage SubjectTechnicalArtifact ConcreteSOftwareSystem
aggregationOfConcreteSOftwareSystemSubjectTechnicalArtifact = make_Relation "ConcreteSOftwareSystem aggregation" "aggregated ConcreteSOftwareSystem"

{- subjectTechnicalArtifact : derived relation obtained by composing
   membershipOfSubjectTechnicalArtifact and aggregationOfConcreteSOftwareSystemSubjectTechnicalArtifact
   It directly links an Software Deployment Environment to the final aggregated ConcreteSOftwareSystem
   hiding the reifying SubjectTechnicalArtifact
-}
subjectTechnicalArtifact : Linkage SOftwareDeploymentEnvironment ConcreteSOftwareSystem
subjectTechnicalArtifact = membershipOfSubjectTechnicalArtifact  ∘  aggregationOfConcreteSOftwareSystemSubjectTechnicalArtifact



-- -------------------------------------------------------------------------------------------- 
{- Partner Technical Artifact: -}
-- Aggregate Member : Partner Technical Artifact
PartnerTechnicalArtifact : ClassOfClassOfBoundedIndividual
PartnerTechnicalArtifact = ClassOfBoundedIndividual



--  PartnerTechnicalArtifact is subTypeOf OperatingTechnicalArtifact
st-1084535e5fce5779-108452655fce54ce : PartnerTechnicalArtifact ⊏ₑ OperatingTechnicalArtifact
st-1084535e5fce5779-108452655fce54ce = polySubTypeOf-identity

--  PartnerTechnicalArtifact is subTypeOf PartnerAgent
st-1084535e5fce5779-fa4ffc235ec86276 : PartnerTechnicalArtifact ⊏ₑ PartnerAgent
st-1084535e5fce5779-fa4ffc235ec86276 = polySubTypeOf-identity

--  PartnerTechnicalArtifact is subTypeOf ConcreteSOftwareSystem
st-1084535e5fce5779-24035cc65fc7ad7f : PartnerTechnicalArtifact ⊏ₑ ConcreteSOftwareSystem
st-1084535e5fce5779-24035cc65fc7ad7f = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerTechnicalArtifact :  Linkage SOftwareDeploymentEnvironment PartnerTechnicalArtifact
membershipOfPartnerTechnicalArtifact = make_upwardNestingRelation "partnerTechnicalArtifact membership" "nested partnerTechnicalArtifact"

-- Aggregation relation
aggregationOfConcreteSOftwareSystemPartnerTechnicalArtifact :  Linkage PartnerTechnicalArtifact ConcreteSOftwareSystem
aggregationOfConcreteSOftwareSystemPartnerTechnicalArtifact = make_Relation "ConcreteSOftwareSystem aggregation" "aggregated ConcreteSOftwareSystem"

{- partnerTechnicalArtifact : derived relation obtained by composing
   membershipOfPartnerTechnicalArtifact and aggregationOfConcreteSOftwareSystemPartnerTechnicalArtifact
   It directly links an Software Deployment Environment to the final aggregated ConcreteSOftwareSystem
   hiding the reifying PartnerTechnicalArtifact
-}
partnerTechnicalArtifact : Linkage SOftwareDeploymentEnvironment ConcreteSOftwareSystem
partnerTechnicalArtifact = membershipOfPartnerTechnicalArtifact  ∘  aggregationOfConcreteSOftwareSystemPartnerTechnicalArtifact


