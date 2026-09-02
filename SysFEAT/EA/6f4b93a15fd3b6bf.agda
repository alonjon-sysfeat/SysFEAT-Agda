{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Interaction Process: 
A Business Interaction Process is a story describing how the components of a Business-Entity (Department Types) interact to produce Business Outcome Events.This includes:- A course of events represented by information flows depicting the steps towards the delivery of expected Outcomes.- Components of an Department Type (Sub-Department Types or Organizational Position) that participate to the story.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6f4b93a15fd3b6bf where -- ========== Business Interaction Process

open import Agda.Primitive
open import SysFEAT.EA.230b35b461d8884d public -- Business Resource Interaction Process
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type

BusinessInteractionProcess : ClassOfClassOfBoundedIndividual
BusinessInteractionProcess = ClassOfBoundedIndividual

--  BusinessInteractionProcess is subTypeOf BusinessResourceInteractionProcess
st-6f4b93ab5fd3b736 : BusinessInteractionProcess ⊏ₑ BusinessResourceInteractionProcess
st-6f4b93ab5fd3b736 = polySubTypeOf-identity

-- == Relationships =======================

{- Participant Department: -}
-- Aggregate Member : Participant Department
ParticipantDepartment : ClassOfClassOfIndividual
ParticipantDepartment = ClassOfIndividual

-- Membership relation
membershipOfParticipantDepartment :  Linkage BusinessInteractionProcess ParticipantDepartment
membershipOfParticipantDepartment = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrgUnitTypeParticipantDepartment :  Linkage ParticipantDepartment OrgUnitType
aggregationOfOrgUnitTypeParticipantDepartment = aggregationOfBuildingBlock

{- participantDepartment : derived relation obtained by composing
   membershipOfParticipantDepartment and aggregationOfOrgUnitTypeParticipantDepartment
   It directly links an Business Interaction Process to the final aggregated OrgUnitType
   hiding the reifying ParticipantDepartment
-}
participantDepartment : Linkage BusinessInteractionProcess OrgUnitType
participantDepartment = membershipOfParticipantDepartment  ∘  aggregationOfOrgUnitTypeParticipantDepartment
